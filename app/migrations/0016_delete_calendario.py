# Generated by Django 4.0.6 on 2022-07-24 01:43

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0015_rename_eventos_evento'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Calendario',
        ),
    ]
