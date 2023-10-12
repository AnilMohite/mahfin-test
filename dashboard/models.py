from django.db import models
from user_profiles.models import UserProfile

class PopulationData(models.Model):
    country = models.CharField(max_length=100)
    year = models.IntegerField()
    value = models.IntegerField()

    class Meta:
        unique_together = ('country', 'year')

    def __str__(self):
        return f"{self.country} ({self.year})"


GRAPH_CHOICES = [
    ('bar', 'Bar graph'),
    ('line', 'Line graph'),
    ('pie', 'Pie Chart'),
    ('histogram', 'Histogram'),
    ('india_map', 'India Map'),
    ('donut', 'Donut'),
]

class UserGraphPermission(models.Model):
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, null=False, blank=False, related_name="user_permission")
    graph_type = models.CharField(max_length=20, choices=GRAPH_CHOICES, null=False, blank=False)

    def __str__(self):
        return f"{self.user} - {self.graph_type}"

    class Meta:
        unique_together = ('user', 'graph_type')