from django.conf.urls import url

from user import views

from rest_framework import routers

router = routers.DefaultRouter()

app_name = 'user'
urlpatterns = [
    url(r'^login/$', views.login_view, name='login'),
    url(r'^signup/$', views.signup_view, name='signup'),
    url(r'^logout/$', views.logout_view, name='logout'),
    url(r'^user/profile/$', views.profile_view, name='profile'),
    url(r'^user/profile/edit/$', views.profile_edit_view, name='profile_edit'),
    url(r'^user/profile/delete/$', views.profile_delete_view, name='profile_delete'),
    url(r'^user/password/edit/$', views.password_edit_view, name='password_edit'),
    url(r'^api/v1/users/$', views.users, name='users'),
    url(r'^api/v1/users/(?P<pk>[0-9]+)/$', views.user_detail, name='user_detail'),
    url(r'^api/v1/check_user/(?P<nickname>\w+)/$', views.check_user, name='check_user'),
    url(r'^api/v1/create_weixin_user/$', views.create_weixin_user, name='create_weixin_user'),
    url(r'^api/v1/update_weixin_user/(?P<pk>[0-9]+)/$', views.update_weixin_user, name='update_weixin_user'),
]
