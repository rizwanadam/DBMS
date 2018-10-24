from django import forms
from app1.models import form
from app1.models import Airport

class FormIn(forms.ModelForm):
    data = Airport.objects.all()
    frm = forms.ModelChoiceField(queryset=data)
    to = forms.ModelChoiceField(queryset=data)
    depart = forms.DateField()
    arrival = forms.DateField()
    NOP = forms.IntegerField()
    class Meta:
        model = form
        fields = "__all__"
