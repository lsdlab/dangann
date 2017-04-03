# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-04-01 10:10
from __future__ import unicode_literals

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('coffee', '0002_auto_20170401_1005'),
    ]

    operations = [
        migrations.AlterField(
            model_name='comment',
            name='comment_date',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
        migrations.AlterField(
            model_name='spot',
            name='commit_date',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
    ]