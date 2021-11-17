import 'package:drmid/models/data_types/super_data_att.dart';

class StringAtt extends SuperDataAtt {
  bool acceptEmpty = false;
  int minLenght = 0, maxLenght = 255;

  @override
  bool validate() {
    // TODO: Add complementary validators @asaenz
    // TODO: Add cinternationalized errors @asaenz
    if (acceptEmpty && value == '') {
      return addError('acceptEmpty', "");
    }
    if (minLenght != 0 && minLenght >= value.length) {
      return addError('minLenght', "");
    }
    if (maxLenght <= value.length) {
      return addError('maxLenght', "");
    }

    return true;
  }
}
