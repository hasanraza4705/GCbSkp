document.addEventListener('DOMContentLoaded', function() {
    const programSelect = document.getElementById('id_program');
    const courseGroupSelect = document.getElementById('id_coursegroup_id');

    function updateCourseGroupOptions(programId) {
        fetch(`/gcbskp/coursegroupdata/coursegroup/?program__id__exact=${programId}`)
            .then(response => response.json())
            .then(data => {
                courseGroupSelect.innerHTML = '';
                const defaultOption = document.createElement('option');
                defaultOption.textContent = 'Choose one';
                defaultOption.value = '';
                courseGroupSelect.appendChild(defaultOption);

                data.forEach(item => {
                    const option = document.createElement('option');
                    option.value = item.id;
                    option.textContent = item.name;
                    courseGroupSelect.appendChild(option);
                });
            })
            .catch(error => console.error('Error fetching course groups:', error));
    }

    if (programSelect) {
        programSelect.addEventListener('change', function() {
            const programId = this.value;
            if (programId) {
                updateCourseGroupOptions(programId);
            } else {
                courseGroupSelect.innerHTML = '';
                const defaultOption = document.createElement('option');
                defaultOption.textContent = 'Choose one';
                defaultOption.value = '';
                courseGroupSelect.appendChild(defaultOption);
            }
        });

        // Initial setup for program dropdown
        const programDefaultOption = document.createElement('option');
        programDefaultOption.textContent = 'Choose program';
        programDefaultOption.value = '';
        programSelect.insertBefore(programDefaultOption, programSelect.firstChild);
        programSelect.value = '';
        // Ensure course group dropdown is empty initially
        courseGroupSelect.innerHTML = '';
        const defaultOption = document.createElement('option');
        // defaultOption.textContent = 'Choose one';
        defaultOption.value = '';
        courseGroupSelect.appendChild(defaultOption);
    }
});
