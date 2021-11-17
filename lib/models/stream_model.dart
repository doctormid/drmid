import 'package:drmid/models/data_types/super_data_att.dart';
import 'package:drmid/models/mixin/active_record.dart';
import 'package:drmid/models/super_model.dart';

abstract class StreamModel extends SuperModel with ActiveRecord implements IStreamModel {
  final List<Attribute> attributes = [
    Attribute('state', Attribute.typeInt, stateInitial),
    Attribute(ActiveRecord.activeAtt, Attribute.typeBool, ActiveRecord.activeValue,
        ActiveRecord.activeValue),
    Attribute('extra_data', Attribute.typeText, null, '{}'),
  ];

  void addAttribute(Attribute att) {
    attributes.add(att);
  }

  List<Attribute> getAttributes() {
    return attributes;
  }

  static final Map stateCatalog = {
    //TODO: Add localized text @asaenz
    stateInitial: 'Initial',
    stateOk: 'Ok',
    statePending: 'Pending',
    stateWrongData: 'Data error',
  };

  static const stateInitial = 1;
  static const stateOk = 2;
  static const statePending = 3;
  static const stateWrongData = 4;
  static const keepLocal = false;
}

abstract class IStreamModel {}
