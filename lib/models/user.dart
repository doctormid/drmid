import 'package:drmid/models/data_types/address_att.dart';
import 'package:drmid/models/data_types/country_att.dart';
import 'package:drmid/models/data_types/email_att.dart';
import 'package:drmid/models/data_types/integer_att.dart';
import 'package:drmid/models/data_types/phone_att.dart';
import 'package:drmid/models/data_types/string_att.dart';
import 'package:drmid/models/stream_model.dart';

class User extends StreamModel {
  StringAtt? firstName, lastName, rfc, locale;
  DateTime? birthDate;
  EmailAtt? email;
  PhoneAtt? phone;
  AddressAtt? address;
  IntegerAtt? gender, bloodType;
  List<countryAtt>? nationalities;

  static final Map genderCatalog = {
    genderFemale: 'Female',
    gencderMale: 'Male',
    genderNoAnswer: 'Prefer not to answer',
  };

  static const genderFemale = 1;
  static const gencderMale = 2;
  static const genderNoAnswer = 3;

  static const languageSpanish = 1;
  static const languageEnglish = 2;
}
