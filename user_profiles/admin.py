from django.contrib import admin
from .models import UserProfile
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin

class UserAdmin(BaseUserAdmin):
    list_display = ["id","username","email",'role']
    list_filter = ["role"]
    fieldsets = [
        (None, {"fields": ["username", "password"]}),
        ("Personal info", {"fields": ["first_name","email","role"]}),
        (None, {"fields": ["is_staff","is_superuser"]}),
    ]

    add_fieldsets = [
        (
            None,
            {
                "classes": ["wide"],
                "fields": ["username",'password1', 'password2',"email", "first_name", "role","is_staff","is_superuser"],
            },
        ),
    ]
    search_fields = ["email","first_name"]
    ordering = ["email","id"]

admin.site.register(UserProfile, UserAdmin)
