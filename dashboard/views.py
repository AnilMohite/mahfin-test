from django.shortcuts import render,redirect,get_object_or_404
from django.contrib.auth.decorators import login_required
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from .models import PopulationData, UserGraphPermission
import pandas as pd
from django.contrib import messages
from django.db import IntegrityError
from .forms import UserGraphPermissionForm
from django.urls import reverse_lazy
from django.http import request, HttpResponse, JsonResponse
import matplotlib.pyplot as plt
import json
from .utils import get_user_permissions

def get_country_data(request):
    country = request.GET.get('country') 
    print(country)
    data = PopulationData.objects.filter(country=country).values('year', 'value')

    chart_data = {
        'labels': [entry['year'] for entry in data],
        'values': [entry['value'] for entry in data],
    }

    return JsonResponse(chart_data)

def check_user_graph_permission(user, graph_type):
    try:
        user_permission = UserGraphPermission.objects.get(user=user, graph_type=graph_type)
        return True
    except UserGraphPermission.DoesNotExist:
        return False

@login_required
def dashboard(request):
    user_permissions = get_user_permissions(request.user)
    countries = PopulationData.objects.values('country').distinct()
    data = PopulationData.objects.values('year', 'value').filter(country='India')

    labels = [entry['year'] for entry in data]
    values = [entry['value'] for entry in data]

    chart_data = {
        "labels": labels,
        "values": values,
    }

    context = {
        'user_permissions': user_permissions,
        'chart_data': json.dumps(chart_data),
        'countries':countries
    }
    return render(request, 'dashboard.html', context)

@login_required
def upload_excel(request):
    if request.method == 'POST' and request.FILES.get('excel_file'):
        excel_file = request.FILES['excel_file']

        # Define the expected column names
        expected_columns = ['Country', 'Year', 'Value']

        if excel_file.name.endswith('.xls') or excel_file.name.endswith('.xlsx'):
            try:
                df = pd.read_excel(excel_file, engine='openpyxl')

                if set(df.columns) == set(expected_columns):
                    for index, row in df.iterrows():
                        country = row['Country']
                        year = row['Year']
                        value = row['Value']

                        try:
                            # add data
                            PopulationData.objects.create(country=country, year=year, value=value)
                        except IntegrityError:
                            # update data if already present
                            existing_record = PopulationData.objects.get(country=country, year=year)
                            existing_record.value = value
                            existing_record.save()
                    messages.success(request, 'Data uploaded successfully')
                else:
                    messages.error(request, 'Invalid data format. Please use the expected column names.')

            except Exception as e:
                messages.error(request, f'Error processing the Excel file: {str(e)}')
        else:
            messages.error(request, 'Invalid file format. Please upload xls, xlsx file.')

    return render(request, 'requestor/upload_excel.html')

@login_required
def user_graph_permission_list(request):
    permissions = UserGraphPermission.objects.all()
    context = {
        'permissions': permissions,
    }
    return render(request, 'requestor/user_graph_permission_list.html', context)

@login_required
class UserGraphPermissionCreate(CreateView):
    model = UserGraphPermission
    form_class = UserGraphPermissionForm
    template_name = 'requestor/user_graph_permission_form.html'
    success_url = reverse_lazy('user_graph_permission_list')
    
@login_required
class UserGraphPermissionUpdate(UpdateView):
    model = UserGraphPermission
    form_class = UserGraphPermissionForm
    template_name = 'requestor/user_graph_permission_form.html'
    success_url = reverse_lazy('user_graph_permission_list')

@login_required
def user_graph_permission_delete(request, pk):
    permission = get_object_or_404(UserGraphPermission, pk=pk)

    success_message = f'Permission for user {permission.user} deleted successfully.'
    permission.delete()

    messages.success(request, success_message)
    return redirect('user_graph_permission_list')