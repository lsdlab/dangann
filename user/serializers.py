from .models import User
from rest_framework import serializers


class UserSerializer(serializers.ModelSerializer):
  class Meta:
    model = User
    fields = ('id', 'username', 'email', 'nickname', 'bio', 'url',
      'location', 'avatar', 'client_mark', 'weixin_nickName', 'weixin_avatarUrl')
