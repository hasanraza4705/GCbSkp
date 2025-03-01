from django import forms
from gcbskp.coursegroup.models import CourseGroup
from gcbskp.admissionPolicy.models import AdmissionPolicy
from gcbskp.offered_program.models import Programs

class AdmissionPolicyForm(forms.ModelForm):
    class Meta:
        model = AdmissionPolicy
        fields = ['program', 'coursegroup_id','status', 'description']

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # self.fields['program'].empty_label = "Choose program"
        self.fields['coursegroup_id'].queryset = CourseGroup.objects.none()
        self.fields['coursegroup_id'].empty_label = "Choose one"

        if 'program' in self.data:
            try:
                program_id = int(self.data.get('program'))
                self.fields['coursegroup_id'].queryset = CourseGroup.objects.filter(program_id=program_id).order_by('name')
            except (ValueError, TypeError):
                pass
        elif self.instance.pk and self.instance.program:
            self.fields['coursegroup_id'].queryset = CourseGroup.objects.filter(program=self.instance.program).order_by('name')