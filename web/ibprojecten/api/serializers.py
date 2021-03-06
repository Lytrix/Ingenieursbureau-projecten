from django.contrib.gis.db import models
from django.contrib.auth import get_user_model
from django.contrib.auth.models import User
from django.http import HttpResponse, JsonResponse

from rest_framework import serializers
from rest_framework_gis.serializers import GeoFeatureModelSerializer
from ibprojecten.api.models import (Project,
                                    Employee,
                                    Rol,
                                    Organisatie,
                                    ProjectPlan,
                                    ProjectType,
                                    HoofdType,
                                    Werkorder,
                                    WerkorderType,
                                    )


class HoofdTypeSerializer(serializers.HyperlinkedModelSerializer):
    """ Serializer to represent the Hoofdtype model """
    class Meta:
        model = HoofdType
        fields = '__all__'


class WerkorderTypeSerializer(serializers.HyperlinkedModelSerializer):
    """ Serializer to represent the Werkordertype model """
    class Meta:
        model = WerkorderType
        fields = '__all__'


class EmployeeSerializer(serializers.HyperlinkedModelSerializer):
    """ Serializer to represent the Employee model """
    class Meta:
        model = Employee
        fields = '__all__'




class RoleSerializer(serializers.ModelSerializer):
    """ Serializer to represent the Employee model """
    class Meta:
        model = Rol
        fields = '__all__'


class ProjectTypeSerializer(serializers.ModelSerializer):
    """ Serializer to represent the Employee model """
    class Meta:
        model = ProjectType
        fields = '__all__'

class WerkorderSerializer(GeoFeatureModelSerializer):
    """ Serializer to represent the Werkorder model """
    geo_field = 'WerkorderPlangebied'
    
    class Meta:
        model = Werkorder
        fields = ['werkorderType',
                  'startdatum',
                  'einddatum',
                  'Timetellnummer',
                  'Boekingscombinatie']

class OrganisationSerializer(serializers.ModelSerializer):
    """ Serializer to represent the Organisation model """
    class Meta:
        model = Organisatie
        fields = '__all__'


class EmployeeField(serializers.StringRelatedField):
    def to_representation(self, value):
        return ('{} {}'.format(value.Voornaam, value.Achternaam),value.Email)
    #def get_huurder(self, obj):
    #    vo = obj.Ambtelijkopdrachtgever
    #   request = self.context.get('request')
    #   return EmployeeDetailSerializer(vo, many=False, context={'request':request}).data

class WerkorderField(serializers.StringRelatedField):
    def to_representation(self, value):
        return ('{}'.format(value.WerkorderType))


class ProjectSerializer(serializers.HyperlinkedModelSerializer):
    """ Serializer to represent the Employee model """
    Ambtelijkopdrachtgever = EmployeeField(many=False, read_only=True, source = 'Opdracht_verantwoordelijke')
    Bestuurlijkopdrachtgever = EmployeeField(many=False, read_only=True, source = 'Bestuurlijk_opdrachtgever')
    Opdrachtverantwoordelijke = EmployeeField(many=False, read_only=True, source = 'Opdracht_verantwoordelijke')
    Deelprojectleider = EmployeeField(many=False, read_only=True, source = 'Deel_projectleider')
    Accounthouder = EmployeeField(many=False, read_only=True, source = 'Account_houder')
  
    class Meta:
        model = Project
        fields = ['Locatie',
            'Type',
            'AardList',
            'Opdrachtverantwoordelijke',
            'Opdracht_verantwoordelijke',
            'Ambtelijkopdrachtgever',
            'Ambtelijk_opdrachtgever',
            'Bestuurlijkopdrachtgever',
            'Bestuurlijk_opdrachtgever',
            'Deelprojectleider',
            'Deel_projectleider',
            'Accounthouder',
            'Account_houder',
            'startdatum',
            'einddatum',
            'Plangebied']



class ProjectGeoJsonSerializer(GeoFeatureModelSerializer):
    """ A class to serialize locations as GeoJSON compatible data """

    #Ambtelijkopdrachtgever = EmployeeDetailSerializer(many=False, read_only=True, source = 'Ambtelijk_opdrachtgever')
    #Opdrachtverantwoordelijke = EmployeeDetailSerializer(many=False, read_only=True, source = 'Opdracht_verantwoordelijke')
    #Bestuurlijkopdrachtgever = EmployeeDetailSerializer(many=False, read_only=True, source = 'Bestuurlijk_opdrachtgever')
    #Deelprojectleider = EmployeeDetailSerializer(many=False, read_only=True, source = 'Deel_projectleider')
    #Accounthouder = EmployeeDetailSerializer(many=False, read_only=True, source = 'Account_houder')

    Ambtelijkopdrachtgever = EmployeeField(many=False, read_only=True, source = 'Opdracht_verantwoordelijke')
    Bestuurlijkopdrachtgever = EmployeeField(many=False, read_only=True, source = 'Bestuurlijk_opdrachtgever')
    Opdrachtverantwoordelijke = EmployeeField(many=False, read_only=True, source = 'Opdracht_verantwoordelijke')
    Deelprojectleider = EmployeeField(many=False, read_only=True, source = 'Deel_projectleider')
    Accounthouder = EmployeeField(many=False, read_only=True, source = 'Account_houder')
    
   # Werkorder = WerkorderField(many=True, read_only=True, source = 'WerkorderType'))

    class Meta:
        model = Project
        geo_field = 'Plangebied'
        fields = [
            'Locatie',
            'Type',
            'AardList',
            'Opdrachtverantwoordelijke',
            'Ambtelijkopdrachtgever',
            'Bestuurlijkopdrachtgever',
            'Deelprojectleider',
            'Accounthouder',
            'startdatum',
            'einddatum'
            #'Plangebied',
            ]