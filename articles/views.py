from django.shortcuts import render

# Create your views here.

def articles(request):
  return render(request, 'articles/articles.html', {'title': 'articles'})
