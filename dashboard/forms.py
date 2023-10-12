# forms.py
from django import forms
from .models import UserGraphPermission, GRAPH_CHOICES
from user_profiles.models import UserProfile


class UserGraphPermissionForm(forms.ModelForm):
    user = forms.ModelChoiceField(
        queryset=UserProfile.objects.filter(role='user'),
        widget=forms.Select,
        label="Select User",
    )

    graph_type = forms.ChoiceField(
        choices=GRAPH_CHOICES,
        widget=forms.Select,
        label="Select Graph Type",
    )

    class Meta:
        model = UserGraphPermission
        fields = ['user', 'graph_type']