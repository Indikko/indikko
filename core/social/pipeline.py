from core.models import IndicoUser, Relationship
from django.contrib.auth.models import User
from django.contrib.auth.models import Group
import json
import urllib.request
from django.core.files import File
from django.core.files.temp import NamedTemporaryFile
from django.core.files.base import ContentFile
from requests import request, HTTPError
import requests

def setup_default_group(**kwargs):
    user = kwargs['user']
    g = Group.objects.get(name='contratante')
    g.user_set.add(user)

def get_extra_profile_fields(backend, user, response, is_new=False, *args, **kwargs):
    """
    Save the image and friend list of the user during signup.
    """
    if user is None:
        return

    if backend.name == 'facebook':
        facebook_user_id = response['id']
        avatar_url = "https://graph.facebook.com/{0}/picture".format(facebook_user_id)
        access_token = response['access_token']

        url = u'https://graph.facebook.com/{0}/' \
              u'friends?fields=id,name,location,picture' \
              u'&access_token={1}'.format(facebook_user_id,access_token,)
        request = urllib.request.urlopen(url)
        jsonStr = request.read().decode('utf-8')

        r = Relationship.get_instance (user_one = user)
        r.find_friends (jsonStr)

    elif backend.name == 'vk-oauth2':
        avatar_url = response['photo_max']
    else:
        avatar_url = None

    avatar_resp = requests.get(avatar_url, params={'type': 'large'})
    avatar_resp.raise_for_status()
    avatar_file = ContentFile(avatar_resp.content)
    user.photo.save("profile_%s.jpg" % user.pk, avatar_file)

    # Save image
    #img_temp = NamedTemporaryFile(delete=True)
    #img_temp.write(urllib.request.urlopen(avatar_url).read())
    #img_temp.flush()

    #user.photo.save("profile_%s.jpg" % user.pk, File(img_temp))

    user.profile_picture = avatar_url
    user.save()
