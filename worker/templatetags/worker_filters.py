# -*- coding: utf-8 -*-
__author__ = 'csampaio'

from django import template

register = template.Library()

@register.filter(name="get_service_details_string")
def get_service_details_string(list):
    details = ""
    for item in list:
        if (item.value > 0):
            if (details != ""):
                details += "; "
            details += str(item.value) + " " + item.description
    return details
