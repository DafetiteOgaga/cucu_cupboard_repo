from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.

def cucu_cupboard_home(request):
	context = {}
	return render(request, 'cucu_cupboard_app/cucu_home_template.html', context)

def cucu_cupboard_about(request):
	context = {'title': 'About'}
	return render(request, 'cucu_cupboard_app/cucu_about_template.html', context)