mixin ActiveRecord implements IActiveRecord {
  static const String activeAtt = 'status';
  static const bool activeValue = true;
}

abstract class IActiveRecord {
  //TODO: implement
  /*
  abstract final String collection;
  abstract List<String> requiredAtts;
  abstract List<String> streamAtts;

  List<String> _streamAtts() {
    return List.from(streamAtts)..addAll(['extra_data', 'active']);
  }

  List<String> _requiredAtts() {
    return List.from(requiredAtts)..addAll(['active']);
  }
  */
}
