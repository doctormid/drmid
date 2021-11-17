import 'package:drmid/models/mixin/has_errors.dart';
import 'package:drmid/models/super_model.dart';

abstract class SuperDataAtt with HasErrors implements ISuperDataAtt {
  late var value;
  SuperDataAtt? _compareWith = null;
  bool trim = true;
}

abstract class ISuperDataAtt {
  //bool validate();
}

class Attribute with HasErrors, Validable {
  late SuperModel? model;
  late final String name;
  late final int type;
  var value = null, defaultValue = null;

  Attribute(this.name, this.type, [this.value, this.defaultValue]);

  String? regex;

  void setRegex(regex) {
    this.regex = regex;
  }

  getValue() {
    return value;
  }

  Attribute updateType(int typeId) {
    type = typeId;
    return this;
  }

  bool handleValidator(Validator validator) {
    if (validator.hasErrors()) {
      validator.errors.forEach((element) {
        addError(element['attribute'], element['message']);
      });
    }

    return false;
  }

  bool validate() {
    switch (type) {
      case typeText:
        return handleValidator(TextValidator(getValue()).validate());
      case typeBool:
        return handleValidator(BoolValidator(getValue()).validate());
      case typeInt:
        return handleValidator(IntValidator(getValue()).validate());
      case typeMoney:
        return handleValidator(MoneyValidator(getValue()).validate());
      case typePassword:
        return handleValidator(PasswordValidator(getValue()).validate());
      case typeSecret:
        return handleValidator(SecretValidator(getValue()).validate());
      case typeUrl:
        return handleValidator(UrlValidator(getValue()).validate());
      case typeString:
        return handleValidator(StringValidator(getValue()).validate());
      case typeRelated:
        return handleValidator(RelatedValidator(getValue()).validate());
      case typePrecise:
        return handleValidator(PreciseValidator(getValue()).validate());
      case typePhone:
        return handleValidator(PhoneValidator(getValue()).validate());
      case typeImage:
        return handleValidator(ImageValidator(getValue()).validate());
      case typeFile:
        return handleValidator(FileValidator(getValue()).validate());
      case typeIP:
        return handleValidator(IPValidator(getValue()).validate());
      case typeEmail:
        return handleValidator(EmailValidator(getValue()).validate());
      case typeDouble:
        return handleValidator(DoubleValidator(getValue()).validate());
      case typeDate:
        return handleValidator(DateValidator(getValue()).validate());
      case typeDateTime:
        return handleValidator(DateTimeValidator(getValue()).validate());
      case typeCountry:
        return handleValidator(CountryValidator(getValue()).validate());
      case typeCurrency:
        return handleValidator(CurrencyValidator(getValue()).validate());
      case typeAddress:
        return handleValidator(AddressValidator(getValue()).validate());
      case typeLocation:
        return handleValidator(LocationValidator(getValue()).validate());
      case typeArray:
        return handleValidator(ArrayValidator(getValue()).validate());
      case typeMap:
        return handleValidator(MapValidator(getValue()).validate());
      default:
        throw Exception('Unknown attribute type received.');
    }
  }

  static const int typeText = 1;
  static const int typeBool = 2;
  static const int typeInt = 3;
  static const int typeMoney = 4;
  static const int typePassword = 5;
  static const int typeSecret = 6;
  static const int typeUrl = 7;
  static const int typeString = 8;
  static const int typeRelated = 9;
  static const int typePrecise = 10;
  static const int typePhone = 11;
  static const int typeImage = 12;
  static const int typeFile = 13;
  static const int typeIP = 14;
  static const int typeEmail = 15;
  static const int typeDouble = 16;
  static const int typeDate = 17;
  static const int typeDateTime = 18;
  static const int typeCountry = 19;
  static const int typeCurrency = 20;
  static const int typeAddress = 21;
  static const int typeLocation = 22;
  static const int typeArray = 23;
  static const int typeMap = 24;
}

mixin Validable {}

abstract class Validator with HasErrors {
  Validator(this._value);
  late var _value;

  Validator validate() {
    return this;
  }
}

class StringValidator extends Validator {
  StringValidator(value) : super(value);
}

class TextValidator extends StringValidator {
  TextValidator(value) : super(value);
}

class BoolValidator extends Validator {
  BoolValidator(value) : super(value);
}

class IntValidator extends Validator {
  IntValidator(value) : super(value);
}

class MoneyValidator extends Validator {
  MoneyValidator(value) : super(value);
}

class PasswordValidator extends Validator {
  PasswordValidator(value) : super(value);
}

class SecretValidator extends Validator {
  SecretValidator(value) : super(value);
}

class UrlValidator extends Validator {
  UrlValidator(value) : super(value);
}

class RelatedValidator extends Validator {
  RelatedValidator(value) : super(value);
}

class PreciseValidator extends Validator {
  PreciseValidator(value) : super(value);
}

class PhoneValidator extends Validator {
  PhoneValidator(value) : super(value);
}

class ImageValidator extends Validator {
  ImageValidator(value) : super(value);
}

class FileValidator extends Validator {
  FileValidator(value) : super(value);
}

class IPValidator extends Validator {
  IPValidator(value) : super(value);
}

class EmailValidator extends Validator {
  EmailValidator(value) : super(value);
}

class DoubleValidator extends Validator {
  DoubleValidator(value) : super(value);
}

class DateValidator extends Validator {
  DateValidator(value) : super(value);
}

class DateTimeValidator extends Validator {
  DateTimeValidator(value) : super(value);
}

class CountryValidator extends Validator {
  CountryValidator(value) : super(value);
}

class CurrencyValidator extends Validator {
  CurrencyValidator(value) : super(value);
}

class AddressValidator extends Validator {
  AddressValidator(value) : super(value);
}

class LocationValidator extends Validator {
  LocationValidator(value) : super(value);
}

class ArrayValidator extends Validator {
  ArrayValidator(value) : super(value);
}

class MapValidator extends Validator {
  MapValidator(value) : super(value);
}
