from django.views.generic import TemplateView
#from django.core.serializers import serialize
from django.http import HttpResponse, JsonResponse
from rest_framework import viewsets
from ibprojecten.api.models import Project, Employee, Rol, ProjectType, Organisatie
from ibprojecten.api.serializers import (ProjectSerializer,
                                         EmployeeSerializer,
                                         ProjectGeoJsonSerializer,
                                         RoleSerializer,
                                         ProjectTypeSerializer,
                                         OrganisationSerializer)

# Create your views here.
class HomePageView(TemplateView):
    template_name = 'index.html'


#def projectenGeojson(request):
#    projectenList = serialize('geojson',Project.objects.all())
#    return HttpResponse(projectenList, content_type='json')


class EmployeeViewSet(viewsets.ModelViewSet):
    """ ViewSet for viewing and editing Employee objects """
    queryset = Employee.objects.all()
    serializer_class = EmployeeSerializer


class ProjectViewSet(viewsets.ModelViewSet):
    """ ViewSet for viewing and editing Employee objects """
    queryset = Project.objects.all()
    serializer_class = ProjectSerializer


class RoleViewSet(viewsets.ModelViewSet):
    """ ViewSet for viewing and editing Employee objects """
    queryset = Rol.objects.all()
    serializer_class = RoleSerializer


class ProjectTypeViewSet(viewsets.ModelViewSet):
    """ ViewSet for viewing and editing Employee objects """
    queryset = ProjectType.objects.all()
    serializer_class = ProjectTypeSerializer


class OrganisationViewSet(viewsets.ModelViewSet):
    """ ViewSet for viewing and editing Employee objects """
    queryset = Organisatie.objects.all()
    serializer_class = OrganisationSerializer

def projectenList(request):
    """
    List all code snippets, or create a new snippet.
    """
    if request.method == 'GET':
        projecten = Project.objects.all()
        serializer = ProjectGeoJsonSerializer(projecten, many=True)
        return JsonResponse(serializer.data, safe=False)


def projectDetail(request, pk):
    """
    Retrieve, update or delete a code snippet.
    """
    try:
        project = Project.objects.get(pk=pk)
    except Project.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'GET':
        serializer = ProjectGeoJsonSerializer(project)
        return JsonResponse(serializer.data)


def employeeDetail(request, pk):

    """
    Retrieve, update or delete a code snippet.
    """
    try:
        employee = Employee.objects.get(pk=pk)
    except Employee.DoesNotExist:
        return HttpResponse(status=404)

    if request.method == 'GET':
        serializer = EmployeeDetailSerializer(employee)
        return JsonResponse(serializer.data)
