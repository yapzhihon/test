import requests

from django.conf import settings

def main():
    data = {'projectKey': settings.SONAR_PROJECTKEY}
    url = settings.SONAR_URL + '/api/qualitygates/project_status'
    request = requests.get(url=url, params=data)
    print(request.content)


if __name__ == '__main__':
    main()
