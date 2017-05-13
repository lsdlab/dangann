from django.db import models

# Create your models here.

class Articles(models.Model):
    title = models.CharField(max_length=70)
    publish_time = models.DateTimeField(auto_now_add=True)
    update_time = models.DateTimeField(auto_now=True)
    content = models.TextField()

    def __str__(self):
      return self.title
