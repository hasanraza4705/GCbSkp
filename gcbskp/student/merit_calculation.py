# merit_calculation.py

def calculate_intermediate_merit(matric_obtained, matric_total, inter_obtained, inter_total, hafiz_e_quran):
    """Calculate merit for Intermediate programs."""
    return (matric_obtained / matric_total) * 100

def calculate_bs_4y_merit_general(matric_obtained, matric_total, inter_obtained, inter_total, hafiz_e_quran):
    """General merit calculation for 4-year BS programs."""
    
    return (((0.25 * matric_obtained) + inter_obtained ) / 
            ((0.25 * matric_total) + inter_total)) * 75

def calculate_bs_4y_merit_it(matric_obtained, matric_total, inter_obtained, inter_total, hafiz_e_quran):
    """Special merit calculation for BS-4YDP Information Technology."""
    additional_marks = 20 if hafiz_e_quran else 0
    return (((0.25 * matric_obtained) + inter_obtained + additional_marks) / 
            ((0.25 * matric_total) + inter_total)) * 75

def get_merit_calculator(program_name, course_group_name=None):
    """Return the appropriate merit calculation function based on program type and course group."""
    if 'BS-4YDP' in program_name:
        if course_group_name == 'Information Technology':
            return calculate_bs_4y_merit_it
        else:
            return calculate_bs_4y_merit_general
    elif 'Intermediate' in program_name:
        return calculate_intermediate_merit
    
    return None  
