from django.conf.urls import url, include

from . import views

from rest_framework import routers
from rest_framework_jwt.views import obtain_jwt_token, refresh_jwt_token

router = routers.DefaultRouter()

app_name = 'coffice'
urlpatterns = [
    # HTML views URL
    url(r'^coffices/$', views.spots_view, name='spots'),
    # API URL
    url(r'^', include(router.urls)),
    url(r'^api/v1/', include(
        'rest_framework.urls', namespace='rest_framework')),
    url(r'^api/v1/api-token-auth/', obtain_jwt_token),
    url(r'^api/v1/api-token-refresh/', refresh_jwt_token),
    url(r'^api/v1/city_spot_list_for_map/(?P<city>\w+)/$',
        views.city_spot_list_for_map,
        name="city_spot_list_for_map"),
    url(r'^api/v1/city_spot_list/(?P<city>\w+)/$',
        views.city_spot_list,
        name="city_spot_list"),
    url(r'^api/v1/spots/$', views.spots, name="spots"),
    url(r'^api/v1/spots/(?P<pk>[0-9]+)/$',
        views.spot_detail,
        name="spot_detail"),
    url(r'^api/v1/spot_comment_list/(?P<pk>[0-9]+)/$',
        views.spot_comment_list,
        name="spot_comment_list"),
    url(r'^api/v1/all_spot_comment_list/(?P<pk>[0-9]+)/$',
        views.all_spot_comment_list,
        name="all_spot_comment_list"),
    url(r'^api/v1/user_comment_list/(?P<pk>[0-9]+)/$',
        views.user_comment_list,
        name="user_comment_list"),
    url(r'^api/v1/all_user_comment_list/(?P<pk>[0-9]+)/$',
        views.all_user_comment_list,
        name="all_user_comment_list"),
    url(r'^api/v1/comments/$', views.comments, name="comments"),
    url(r'^api/v1/comments/(?P<pk>[0-9]+)/$',
        views.comment_detail,
        name="comment_detail"),
    url(r'^api/v1/user_spot_list/(?P<pk>[0-9]+)/$',
        views.user_spot_list,
        name="user_spot_list"),
    url(r'^api/v1/all_user_spot_list/(?P<pk>[0-9]+)/$',
        views.all_user_spot_list,
        name="all_user_spot_list"),
    url(r'^api/v1/random_spots/$', views.random_spots, name="random_spots"),
    url(r'^api/v1/city_users/(?P<city>\w+)/$',
        views.city_users,
        name="city_users"),
    url(r'^api/v1/spot_users/(?P<pk>[0-9]+)/$',
        views.spot_users,
        name="spot_users"),
    url(r'^api/v1/latest_comments/$',
        views.latest_comments,
        name="latest_comments"),
]
