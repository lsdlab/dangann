from django.conf.urls import url

from . import views

app_name = 'articles'
urlpatterns = [
    # HTML views URL
    url(r'^articles/', views.articles, name='articles'),
]
