# Generated by Django 4.2.6 on 2023-10-11 09:22

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='PopulationData',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('country', models.CharField(max_length=100)),
                ('year', models.IntegerField()),
                ('value', models.IntegerField()),
            ],
            options={
                'unique_together': {('country', 'year')},
            },
        ),
    ]
