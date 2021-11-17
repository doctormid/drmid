import 'package:drmid/models/local_model.dart';

class Specialty extends LocalModel {
  late String specialistName;
  late String name;
  late String specialistNameEs;
  late String nameEs;

  Specialty(this.specialistName, this.specialistNameEs, this.name, this.nameEs);

  Map<int, Map> data = {
    1: {
      'specialist_name': {'es': "Acupuntores", "en": "Acupuncturists"},
      'name': {"es": "Acupuntura", "en": "Acupuncture"}
    },
    2: {
      'specialist_name': {'es': "Alergólogos", "en": "Allergists"},
      'name': {"es": "Alergología", "en": "Allergology"}
    },
    3: {
      'specialist_name': {'es': "Anatomopatólogos", "en": "Anatomopathologists"},
      'name': {"es": "Anatomía Patológica", "en": "Pathological anatomy"}
    },
    4: {
      'specialist_name': {'es': "Anestesiólogos", "en": "Anesthesiologists"},
      'name': {"es": "Anestesiología", "en": "Anesthesiology"}
    },
    5: {
      'specialist_name': {'es': "Angiólogos", "en": "Angiologists"},
      'name': {"es": "Angiología y Cirugia Vascular", "en": "Angiology and Vascular Surgery"}
    },
    6: {
      'specialist_name': {'es': "Audiólogos", "en": "Audiologists"},
      'name': {
        "es": "Audiología, Otoneurología y Foniatría",
        "en": "Audiology, Otoneurology and Phoniatrics"
      }
    },
    7: {
      'specialist_name': {'es': "Cardiólogos", "en": "Cardiologists"},
      'name': {"es": "Cardiología", "en": "Cardiology"}
    },
    8: {
      'specialist_name': {
        'es': "Cirujanos cardiovasculares y torácicos",
        "en": "Cardiovascular and thoracic surgeons"
      },
      'name': {
        "es": "Cirugía Cardiovascular y del Tórax",
        "en": "Cardiovascular and Thoracic Surgery"
      }
    },
    9: {
      'specialist_name': {'es': "Cirujanos de la mano", "en": "Surgeons of the hand"},
      'name': {"es": "Cirugía de la Mano", "en": "Hand Surgery"}
    },
    10: {
      'specialist_name': {
        'es': "Cirujanos estéticos y cosméticos",
        "en": "Cosmetic and cosmetic surgeons"
      },
      'name': {"es": "Cirugía Estética y Cosmética", "en": "Cosmetic and Cosmetic Surgery"}
    },
    11: {
      'specialist_name': {'es': "Cirujanos generales", "en": "General surgeons"},
      'name': {"es": "Cirugía General", "en": "General Surgery"}
    },
    12: {
      'specialist_name': {'es': "Cirujanos maxilofaciales", "en": "Maxillofacial surgeons"},
      'name': {"es": "Cirugia Maxilofacial", "en": "Maxillofacial Surgery"}
    },
    13: {
      'specialist_name': {'es': "Cirujanos oncológicos", "en": "Oncological surgeons"},
      'name': {"es": "Cirugía Oncológica", "en": "Oncologic surgery"}
    },
    14: {
      'specialist_name': {'es': "Cirujanos pediátricos", "en": "Pediatric surgeons"},
      'name': {"es": "Cirugía Pediátrica", "en": "Pediatric surgery"}
    },
    15: {
      'specialist_name': {'es': "Cirujanos plásticos", "en": "Plastic surgeons"},
      'name': {
        "es": "Cirugía Plástica, Estética y Reconstructiva",
        "en": "Plastic, aesthetic and reconstructive surgery"
      }
    },
    16: {
      'specialist_name': {'es': "Dermatólogos", "en": "Dermatologists"},
      'name': {"es": "Dermatología", "en": "Dermatology"}
    },
    17: {
      'specialist_name': {'es': "Diabetólogos", "en": "Diabetologists"},
      'name': {"es": "Diabetología", "en": "Diabetology"}
    },
    18: {
      'specialist_name': {'es': "Endocrinólogos", "en": "Endocrinologists"},
      'name': {"es": "Endocrinología", "en": "Endocrinology"}
    },
    19: {
      'specialist_name': {'es': "Endoscopistas", "en": "Endoscopists"},
      'name': {"es": "Endoscopia", "en": "Endoscopy"}
    },
    20: {
      'specialist_name': {'es': "Enfermeros", "en": "Nurses"},
      'name': {"es": "Enfermería", "en": "Nursing"}
    },
    21: {
      'specialist_name': {'es': "Fisioterapeutas", "en": "Physiotherapists"},
      'name': {"es": "Fisioterapia", "en": "Physiotherapy"}
    },
    22: {
      'specialist_name': {'es': "Gastroenterólogos", "en": "Gastroenterologists"},
      'name': {"es": "Gastroenterología", "en": "Gastroenterology"}
    },
    23: {
      'specialist_name': {'es': "Genetistas", "en": "Geneticists"},
      'name': {"es": "Genética", "en": "Genetics"}
    },
    24: {
      'specialist_name': {'es': "Geriatras", "en": "Geriatricians"},
      'name': {"es": "Geriatría", "en": "Geriatrics"}
    },
    25: {
      'specialist_name': {'es': "Ginecólogos", "en": "Gynecologists"},
      'name': {"es": "Ginecología y Obstetricia", "en": "Gynecology and Obstetrics"}
    },
    26: {
      'specialist_name': {'es': "Hematólogos", "en": "Hematologists"},
      'name': {"es": "Hematología", "en": "Hematology"}
    },
    27: {
      'specialist_name': {'es': "Homeópatas", "en": "Homeopaths"},
      'name': {"es": "Homeopatía", "en": "Homeopathy"}
    },
    28: {
      'specialist_name': {'es': "Infectólogos", "en": "Infectologists"},
      'name': {"es": "Infectología", "en": "Infectology"}
    },
    29: {
      'specialist_name': {'es': "Inmunólogos", "en": "Immunologists"},
      'name': {"es": "Inmunología", "en": "Immunology"}
    },
    30: {
      'specialist_name': {'es': "Analistas clínicos", "en": "Clinical analysts"},
      'name': {"es": "Laboratorio - Análisis Clínicos", "en": "Laboratory - Clinical Analysis"}
    },
    31: {
      'specialist_name': {'es': "Logopedas", "en": "Logopedas"},
      'name': {"es": "Logopedia", "en": "Logopedia"}
    },
    32: {
      'specialist_name': {
        'es': "Profesionales de Medicina Complementaria",
        "en": "Complementary Medicine Professionals"
      },
      'name': {
        "es": "Medicina Complementaria y Alternativa",
        "en": "Complementary and Alternative Medicine"
      }
    },
    33: {
      'specialist_name': {
        'es': "Especialistas en Medicina Critica y Terapia Intensiva",
        "en": "Specialists in Critical Medicine and Intensive Therapy"
      },
      'name': {
        "es": "Medicina Crítica y Terapia Intensiva",
        "en": "Critical Medicine and Intensive Therapy"
      }
    },
    34: {
      'specialist_name': {
        'es': "Especialistas en Medicina del Deporte",
        "en": "Specialists in Sports Medicine"
      },
      'name': {"es": "Medicina del Deporte", "en": "Sports Medicine"}
    },
    35: {
      'specialist_name': {
        'es': "Especialistas en Medicina del Trabajo",
        "en": "Specialists in Occupational Medicine"
      },
      'name': {"es": "Medicina del Trabajo", "en": "Work Medicine"}
    },
    36: {
      'specialist_name': {'es': "Médicos estéticos", "en": "Aesthetic doctors"},
      'name': {"es": "Medicina Estética", "en": "Aesthetic Medicine"}
    },
    37: {
      'specialist_name': {'es': "Médicos de familia", "en": "Family doctors"},
      'name': {"es": "Medicina Familiar", "en": "Family Medicine"}
    },
    38: {
      'specialist_name': {'es': "Médicos generales", "en": "General practitioners"},
      'name': {"es": "Medicina General", "en": "General medicine"}
    },
    39: {
      'specialist_name': {
        'es': "Especialistas en Medicina Integrada",
        "en": "Specialists in Integrated Medicine"
      },
      'name': {"es": "Medicina Integrada", "en": "Integrated Medicine"}
    },
    40: {
      'specialist_name': {'es': "Internistas", "en": "Internists"},
      'name': {"es": "Medicina Interna", "en": "Internal Medicine"}
    },
    41: {
      'specialist_name': {
        'es': "Especialistas en Medicina Nuclear",
        "en": "Specialists in Nuclear Medicine"
      },
      'name': {"es": "Medicina Nuclear", "en": "Nuclear medicine"}
    },
    42: {
      'specialist_name': {
        'es': "Especialistas en Medicina Preventiva",
        "en": "Specialists in Preventive Medicine"
      },
      'name': {"es": "Medicina Preventiva", "en": "Preventive medicine"}
    },
    43: {
      'specialist_name': {'es': "Naturistas", "en": "Naturists"},
      'name': {"es": "Naturopatía", "en": "Naturopathy"}
    },
    44: {
      'specialist_name': {'es': "Nefrólogos", "en": "Nephrologists"},
      'name': {"es": "Nefrología", "en": "Nephrology"}
    },
    45: {
      'specialist_name': {'es': "Neonatólogos", "en": "Neonatologists"},
      'name': {"es": "Neonatología", "en": "Neonatology"}
    },
    46: {
      'specialist_name': {'es': "Neumólogos", "en": "Pulmonologists"},
      'name': {"es": "Neumología", "en": "Pneumology"}
    },
    47: {
      'specialist_name': {'es': "Neurocirujanos", "en": "Neurosurgeons"},
      'name': {"es": "Neurocirugía", "en": "Neurosurgery"}
    },
    48: {
      'specialist_name': {'es': "Neurofisiólogos", "en": "Neurophysiologists"},
      'name': {"es": "Neurofisiología", "en": "Neurophysiology"}
    },
    49: {
      'specialist_name': {'es': "Neurólogos", "en": "Neurologists"},
      'name': {"es": "Neurología", "en": "Neurology"}
    },
    50: {
      'specialist_name': {'es': "Nutricionistas", "en": "Nutritionists"},
      'name': {"es": "Nutrición", "en": "Nutrition"}
    },
    51: {
      'specialist_name': {'es': "Nutriólogos", "en": "Nutritionists"},
      'name': {"es": "Nutriología Clínica", "en": "Clinical Nutriology"}
    },
    52: {
      'specialist_name': {
        'es': "Especialistas en Obesidad y Delgadez",
        "en": "Specialists in Obesity and Thinness"
      },
      'name': {"es": "Obesidad y Delgadez", "en": "Obesity and thinness"}
    },
    53: {
      'specialist_name': {'es': "Dentistas - Odontólogos", "en": "Dentists"},
      'name': {"es": "Odontología", "en": "Odontology"}
    },
    54: {
      'specialist_name': {'es': "Oftalmólogos", "en": "Ophthalmologists"},
      'name': {"es": "Oftalmología", "en": "Ophthalmology"}
    },
    55: {
      'specialist_name': {'es': "Oncólogos", "en": "Oncologists"},
      'name': {"es": "Oncología", "en": "Oncology"}
    },
    56: {
      'specialist_name': {'es': "Optometristas", "en": "Optometrists"},
      'name': {"es": "Optometría", "en": "Optometry"}
    },
    57: {
      'specialist_name': {'es': "Ortopedistas", "en": "Orthopedists"},
      'name': {"es": "Ortopedia", "en": "Orthopedics"}
    },
    58: {
      'specialist_name': {'es': "Otorrinolaringólogos", "en": "Otolaryngologists"},
      'name': {"es": "Otorrinolaringología", "en": "Otorhinolaryngology"}
    },
    59: {
      'specialist_name': {'es': "Patólogos", "en": "Pathologists"},
      'name': {"es": "Patología", "en": "Pathology"}
    },
    60: {
      'specialist_name': {'es': "Pediatras", "en": "Pediatricians"},
      'name': {"es": "Pediatría", "en": "Pediatrics"}
    },
    61: {
      'specialist_name': {'es': "Podiatras", "en": "Podiatrists"},
      'name': {"es": "Podiatría", "en": "Podiatry"}
    },
    62: {
      'specialist_name': {'es': "Podólogos", "en": "Podiatrists"},
      'name': {"es": "Podología", "en": "Chiropody"}
    },
    63: {
      'specialist_name': {'es': "Proctólogos", "en": "Proctologists"},
      'name': {"es": "Proctología", "en": "Proctology"}
    },
    64: {
      'specialist_name': {'es': "Psicoanalistas", "en": "Psychoanalysts"},
      'name': {"es": "Psicoanálisis", "en": "Psychoanalysis"}
    },
    65: {
      'specialist_name': {'es': "Psicólogos", "en": "Psychologists"},
      'name': {"es": "Psicología", "en": "Psychology"}
    },
    66: {
      'specialist_name': {'es': "Psicopedagogos", "en": "Psychopedagogues"},
      'name': {"es": "Psicopedagogía", "en": "Psychopedagogy"}
    },
    67: {
      'specialist_name': {'es': "Psiquiatras", "en": "Psychiatrists"},
      'name': {"es": "Psiquiatría", "en": "Psychiatry"}
    },
    68: {
      'specialist_name': {'es': "Quiroprácticos", "en": "Chiropractors"},
      'name': {"es": "Quiropráctica", "en": "Chiropractic"}
    },
    69: {
      'specialist_name': {'es': "Radiólogos", "en": "Radiologists"},
      'name': {"es": "Radiología", "en": "Radiology"}
    },
    70: {
      'specialist_name': {'es': "Radioterapeutas", "en": "Radiotherapists"},
      'name': {"es": "Radioterapia", "en": "Radiotherapy"}
    },
    71: {
      'specialist_name': {
        'es': "Especialistas en Rehabilitación y Medicina Física",
        "en": "Specialists in Rehabilitation and Physical Medicine"
      },
      'name': {
        "es": "Rehabilitación y Medicina Física",
        "en": "Rehabilitation and Physical Medicine"
      }
    },
    72: {
      'specialist_name': {
        'es': "Especialistas en Retina Médica y Quirúrgica",
        "en": "Specialists in Medical and Surgical Retina"
      },
      'name': {"es": "Retina Médica y Quirúrgica", "en": "Medical and Surgical Retina"}
    },
    73: {
      'specialist_name': {'es': "Reumatólogos", "en": "Rheumatologists"},
      'name': {"es": "Reumatología", "en": "Rheumatology"}
    },
    74: {
      'specialist_name': {'es': "Sexólogos", "en": "Sexologists"},
      'name': {"es": "Sexología", "en": "Sexology"}
    },
    75: {
      'specialist_name': {'es': "Unidad de Relajación", "en": "Relaxation Unit"},
      'name': {"es": "SPA", "en": "SPA"}
    },
    76: {
      'specialist_name': {'es': "Algólogos", "en": "Alloggists"},
      'name': {"es": "Terapia del Dolor", "en": "Pain Therapy"}
    },
    77: {
      'specialist_name': {'es': "Terapeutas ocupacionales", "en": "Occupational therapists"},
      'name': {"es": "Terapia Ocupacional", "en": "Occupational Therapy"}
    },
    78: {
      'specialist_name': {'es': "Traumatólogos", "en": "Traumatologists"},
      'name': {"es": "Traumatología", "en": "Traumatology"}
    },
    79: {
      'specialist_name': {'es': "Urgenciólogos", "en": "Urgeologists"},
      'name': {"es": "Urgencias", "en": "Emergency"}
    },
    80: {
      'specialist_name': {'es': "Urólogos", "en": "Urologists"},
      'name': {"es": "Urología", "en": "Urology"}
    },
  };
}
