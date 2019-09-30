import requests
import json

from django.conf import settings


def main():
    data = {'projectKey': settings.SONAR_PROJECTKEY}
    url = settings.SONAR_URL + '/api/qualitygates/project_status'
    request = requests.get(url=url, params=data)

    print(request.status_code)
    if request.status_code == 200:
        print(request.content)
        data = json.loads(request.content)
        project_status = data.get('projectStatus', {})
        print(project_status)


if __name__ == '__main__':
    main()
