from django.contrib import admin

# Register your models here.

from .models import Spot, Comment


# Register your models here.
class SpotAdmin(admin.ModelAdmin):
    list_display = ('id', 'city', 'name', 'longitude', 'latitude',
      'commit_user_name', 'commit_message', 'commit_date')
    search_fields = (
        'city', 'name', 'commit_user_name', 'commit_message')
    # list_filter = ('data_joined',)
    # date_hierarchy = 'data_joined'


class CommentAdmin(admin.ModelAdmin):
    list_display = ('id','comment_user_name', 'comment_message', 'comment_date', 'comment_mark')
    search_fields = (
        'comment_user_name', 'comment_message', 'comment_mark')
    # list_filter = ('data_joined',)
    # date_hierarchy = 'data_joined'


admin.site.register(Spot, SpotAdmin)
admin.site.register(Comment, CommentAdmin)
