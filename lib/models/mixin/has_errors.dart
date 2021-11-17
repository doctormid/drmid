mixin HasErrors {
  List<Map> errors = [];

  bool hasErrors() {
    return errors.isNotEmpty;
  }

  bool addError(String attribute, String message) {
    errors.add({'att': attribute, 'message': message});

    return false;
  }
}
