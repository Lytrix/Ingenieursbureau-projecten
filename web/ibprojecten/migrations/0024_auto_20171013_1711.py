# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-10-13 15:11
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ibprojecten', '0023_auto_20171013_1703'),
    ]

    operations = [
        migrations.AlterField(
            model_name='project',
            name='Hoofdtype',
            field=models.ManyToManyField(related_name='hoofd_type_project', to='ibprojecten.HoofdType'),
        ),
    ]