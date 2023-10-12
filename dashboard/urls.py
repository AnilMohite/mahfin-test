from django.urls import path
from .views import dashboard, upload_excel, user_graph_permission_list , UserGraphPermissionCreate, UserGraphPermissionUpdate, user_graph_permission_delete, get_country_data


urlpatterns = [
    path('', dashboard, name='dashboard'),
    path('upload_excel/', upload_excel, name='upload_excel'),
    path('get_country_data/', get_country_data, name='get_country_data'),

    path('permissions/', user_graph_permission_list, name='user_graph_permission_list'),
    path('permissions/add/', UserGraphPermissionCreate.as_view(), name='add_permission'),
    path('permissions/edit/<int:pk>/', UserGraphPermissionUpdate.as_view(), name='edit_permission'),
    path('permissions/delete/<int:pk>/', user_graph_permission_delete, name='delete_permission')

]