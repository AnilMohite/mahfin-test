# forms.py
from django import forms
from .models import UserGraphPermission, GRAPH_CHOICES
from user_profiles.models import UserProfile


class UserGraphPermissionForm(forms.ModelForm):
    user = forms.ModelChoiceField(
        queryset=UserProfile.objects.filter(role='user'),
        widget=forms.Select(attrs={'class': 'form-control'}),  
        label="Select User",
    )

    graph_type = forms.ChoiceField(
        choices=GRAPH_CHOICES,
        widget=forms.Select(attrs={'class': 'form-control'}), 
        label="Select Graph Type",
    )

    class Meta:
        model = UserGraphPermission
        fields = ['user', 'graph_type']

    def __init__(self, *args, **kwargs):
        super(UserGraphPermissionForm, self).__init__(*args, **kwargs)

        # self.fields['user'].choices = [('', 'Select User')] + list(self.fields['user'].choices)

        self.fields['graph_type'].choices = [('', '---------')] + list(self.fields['graph_type'].choices)