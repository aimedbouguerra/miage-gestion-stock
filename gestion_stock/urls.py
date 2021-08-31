"""gestion_stock URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from stockapp import views

urlpatterns = [
    path('', views.acceuil),
    path('produits/<int:categorie_id>/', views.produits),
    path('produits/delete/<int:produit_id>/', views.supprimer_produit),
    path('produits/augmenter/<int:produit_id>/', views.augmenter_produit),
    path('produits/diminuer/<int:produit_id>/', views.diminuer_produit),
    path('produits/exporter/', views.exporter),
    path('admin/', views.admin),
]