from coffice.models import Spot, Comment

from rest_framework import serializers


class SpotsDatatableSerializer(serializers.ModelSerializer):
    google_map_link = serializers.SerializerMethodField('get_full_position')

    def get_full_position(self, obj):
        return 'http://maps.google.com/?q={},{}'.format(obj.latitude,
                                                        obj.longitude)

    class Meta:
        model = Spot
        fields = ('id', 'city', 'name', 'download_speed', 'price_indication',
                  'commit_user_name', 'commit_message', 'google_map_link')


class CitySpotsListSerializer(serializers.ModelSerializer):
    class Meta:
        model = Spot
        fields = ('id', 'city', 'name', 'commit_user_name', 'commit_message',
                  'latitude', 'longitude')


class CitySpotsListForMapSerializer(serializers.ModelSerializer):
    class Meta:
        model = Spot
        fields = ('id', 'latitude', 'longitude')


class SpotsSerializer(serializers.ModelSerializer):

    class Meta:
        model = Spot
        fields = ('id', 'city', 'name', 'longitude', 'latitude',
                  'download_speed', 'upload_speed', 'price_indication',
                  'bathroom', 'commit_user', 'commit_user_name',
                  'commit_message', 'commit_date')


class CommentSerializer(serializers.ModelSerializer):
    spot_name = serializers.ReadOnlyField(source='spot.name')
    spot_city = serializers.ReadOnlyField(source='spot.city')

    class Meta:
        model = Comment
        fields = ('id', 'comment_message', 'comment_user_name',
                  'comment_user_avatarurl', 'comment_date', 'spot_id',
                  'comment_user_id', 'comment_mark', 'spot_name', 'spot_city')


class CommentSampleSerializer(serializers.ModelSerializer):
    spot_name = serializers.ReadOnlyField(source='spot.name')
    spot_city = serializers.ReadOnlyField(source='spot.city')

    class Meta:
        model = Comment
        fields = ('id', 'comment_message', 'comment_mark', 'comment_date',
                  'spot_name', 'spot_city')
