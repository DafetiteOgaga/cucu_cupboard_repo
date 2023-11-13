from django.urls import path
from . import views

urlpatterns = [
    path('', views.cucu_cupboard_home, name='cucu_home'),
    path('about/', views.cucu_cupboard_about, name='cucu_about'),
]
