from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def cucu_cupboard_home(request):
	return HttpResponse('<h1>Welcome Home</h1>')

def cucu_cupboard_about(request):
	return HttpResponse('<h1>About page</h1>')