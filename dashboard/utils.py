
from .models import UserGraphPermission, GRAPH_CHOICES

def get_user_permissions(user):
    graph_choices = [choice[0] for choice in GRAPH_CHOICES]

    user_permissions = {}
    if not user.is_superuser and user.role=='user':
        # Users with the "User" role have access based on their permissions
        for graph_type in graph_choices:
            permission = UserGraphPermission.objects.filter(user=user, graph_type=graph_type).first()
            user_permissions[graph_type] = permission is not None
    else:
        # Admins and Responders have access to all graphs
        for graph_type in graph_choices:
            user_permissions[graph_type] = True

    return user_permissions
