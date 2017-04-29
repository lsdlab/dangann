from django.contrib import admin

# Register your models here.

from .models import User


# Register your models here.
class UserAdmin(admin.ModelAdmin):
    list_display = ('id','username', 'email',
      'is_superuser', 'is_staff', 'is_active',
      'nickname', 'client_mark', 'weixin_nickName')
    search_fields = (
        'username', 'email', 'nickname', 'location', 'client_mark', 'weixin_nickName')
    # list_filter = ('data_joined',)
    # date_hierarchy = 'data_joined'


admin.site.register(User, UserAdmin)
