# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-10-12 20:07
from __future__ import unicode_literals

import django.contrib.gis.db.models.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('ibprojecten', '0014_auto_20171011_0128'),
    ]

    operations = [
        migrations.AddField(
            model_name='werkorder',
            name='WerkorderPlangebied',
            field=django.contrib.gis.db.models.fields.PolygonField(null=True, srid=4326),
        ),
    ]