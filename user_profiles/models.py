from django.contrib.auth.models import BaseUserManager, AbstractUser
from django.db import models

class UserProfileManager(BaseUserManager):
    def create_user(self, username, email, password=None, role='user', **extra_fields):
        if not email:
            raise ValueError("The Email field must be set")
        email = self.normalize_email(email)
        user = self.model(username=username, email=email, role=role, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, username, email, password=None, **extra_fields):
        extra_fields.setdefault("role", "admin")
        extra_fields.setdefault("is_staff", True)
        extra_fields.setdefault("is_superuser", True)

        if extra_fields.get("is_staff") is not True:
            raise ValueError("Superuser must have is_staff=True.")
        if extra_fields.get("is_superuser") is not True:
            raise ValueError("Superuser must have is_superuser=True.")

        return self.create_user(username, email, password, **extra_fields)

class UserProfile(AbstractUser):
    ROLES = [
        ('user', 'User'),
        ('requestor', 'Requestor'),
        ('admin', 'Admin'),
    ]
    role = models.CharField(max_length=20, choices=ROLES, default='user')

    objects = UserProfileManager()

    def __str__(self):
        return self.username

