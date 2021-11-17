import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drmid/helpers/super_helper.dart';
import 'package:drmid/models/mixin/has_errors.dart';

abstract class FirestoreHelper extends SuperHelper {
  //TODO: remove @asaenz
  void test() {}
}

class FirestoreClient {
  static final FirestoreClient _singleton = FirestoreClient._internal();

  FirestoreClient._internal();

  factory FirestoreClient() {
    return _singleton;
  }

  static FirestoreClient instance() {
    return _singleton;
  }

  static final FirebaseFirestore db = FirebaseFirestore.instance;

  static FireCollection? getCollection(String path) {
    return FireCollection.get(path);
  }

  //TODO: remove @asaenz
  void a() {}
}

class FireQuery {
  final FireCollection _collection;
  late Query? _query;
  QuerySnapshot? _querySnapshot;

  FireQuery addWhere(
    Object field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    _query = _query != null
        ? _query!.where(
            field,
            isEqualTo: isEqualTo,
            isNotEqualTo: isNotEqualTo,
            isLessThan: isLessThan,
            isLessThanOrEqualTo: isLessThanOrEqualTo,
            isGreaterThan: isGreaterThan,
            isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
            arrayContains: arrayContains,
            arrayContainsAny: arrayContainsAny,
            whereIn: whereIn,
            whereNotIn: whereNotIn,
            isNull: isNull,
          )
        : _collection.reference.where(
            field,
            isEqualTo: isEqualTo,
            isNotEqualTo: isNotEqualTo,
            isLessThan: isLessThan,
            isLessThanOrEqualTo: isLessThanOrEqualTo,
            isGreaterThan: isGreaterThan,
            isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
            arrayContains: arrayContains,
            arrayContainsAny: arrayContainsAny,
            whereIn: whereIn,
            whereNotIn: whereNotIn,
            isNull: isNull,
          );

    return this;
  }

  FireQuery endAt(List<Object?> values) {
    _query != null ? _query!.endAt(values) : _collection.reference.endAt(values);

    return this;
  }

  FireQuery endAtDocument(DocumentSnapshot docSnap) {
    _query != null ? _query!.endAtDocument(docSnap) : _collection.reference.endAtDocument(docSnap);
    return this;
  }

  FireQuery endBefore(List<Object?> values) {
    _query != null ? _query!.endBefore(values) : _collection.reference.endBefore(values);
    return this;
  }

  FireQuery endBeforeDocument(DocumentSnapshot docSnap) {
    _query != null
        ? _query!.endBeforeDocument(docSnap)
        : _collection.reference.endBeforeDocument(docSnap);
    return this;
  }

  FireQuery limit(int limit) {
    _query != null ? _query!.limit(limit) : _collection.reference.limit(limit);
    return this;
  }

  FireQuery limitToLast(int limit) {
    _query != null ? _query!.limitToLast(limit) : _collection.reference.limitToLast(limit);
    return this;
  }

  FireQuery orderBy(Object field, {bool descending = false}) {
    _query != null
        ? _query!.orderBy(field, descending: descending)
        : _collection.reference.orderBy(field, descending: descending);
    return this;
  }

  FireQuery startAfter(List<Object?> values) {
    _query != null ? _query!.startAfter(values) : _collection.reference.startAfter(values);
    return this;
  }

  FireQuery startAfterDocument(DocumentSnapshot docSnap) {
    _query != null
        ? _query!.startAfterDocument(docSnap)
        : _collection.reference.startAfterDocument(docSnap);
    return this;
  }

  FireQuery startAt(List<Object?> values) {
    _query != null ? _query!.startAt(values) : _collection.reference.startAt(values);
    return this;
  }

  FireQuery startAtDocument(DocumentSnapshot docSnap) {
    _query != null
        ? _query!.startAtDocument(docSnap)
        : _collection.reference.startAtDocument(docSnap);
    return this;
  }

  void build([GetOptions? options]) async {
    _querySnapshot = await _query!.get(options);
  }

  void buildStream([GetOptions? options]) async {
    Stream stream = _query!.get(options).asStream();
  }

  List<DocumentSnapshot>? getData() {
    return _querySnapshot!.docs;
  }

  FireQuery(this._collection);
}

abstract class FireHandler {}

////////////////////////////////
abstract class FireObject {}

class FireCollection extends FireObject {
  final CollectionReference _reference;

  CollectionReference get reference => _reference;

  late FireQuery _query;
  static const Map<String, FireCollection> _activeReferences = {};

  FireCollection(this._reference);

  static FireCollection? get(String path) {
    if (!_activeReferences.containsKey(path)) {
      FireCollection? collection = FireCollection(FirestoreClient.db.collection(path));
      _activeReferences[path] = collection;
    }

    return _activeReferences[path]!;
  }

  FireQuery getQuery() {
    return _query;
  }

  FireQuery clearQuery() {
    return _query = FireQuery(this);
  }

  ////////////////////////////////////////////////////////////////////////////////

  Future<FireDocument?> getOne({String? reference, FireQuery? query, bool stream = true}) async {
    if (reference != null && query == null) {
      DocumentSnapshot? doc = await _reference.doc(reference).get();

      return FireDocument(doc);
    }
  }
}

class FireNestedCollection extends FireCollection {
  FireNestedCollection(CollectionReference<Object?> reference) : super(reference);
}

class FireDataBundle extends FireObject {}

class FireDocument extends FireObject {
  final DocumentSnapshot _doc;

  FireDocument(this._doc);
}

class FireField extends FireObject with HasErrors {
  late final FireType _type;
  late dynamic _value;

  FireField(this._type, this._value);
}

////////////////////////////////
abstract class SuperFireType extends FireObject {
  final String streamType;
  final String localType;
  dynamic value;

  bool validate() {
    // do things
    return true;
  }

  SuperFireType(this.streamType, this.localType, this.value);
}

abstract class FireType extends SuperFireType {
  FireType(String streamType, String localType, value) : super(streamType, localType, value);

  @override
  bool validate() {
    // do things
    return super.validate();
  }
}

////////////////////////////////
mixin FireIterableType implements FireType {}

mixin FireBasicType implements FireType {}

mixin FireComplexType implements FireType {}

mixin FireNumericType implements FireType {}

////////////////////////////////
class FireNullType extends FireType with FireBasicType {
  FireNullType(String streamType, String localType, value) : super(streamType, localType, value);

  @override
  bool validate() {
    return super.validate() && true;
  }
}

class FireBooleanType extends FireType with FireBasicType {
  FireBooleanType(String streamType, String localType, value) : super(streamType, localType, value);

  @override
  bool validate() {
    return super.validate() && true;
  }
}

class FireIntegerType extends FireType with FireBasicType {
  FireIntegerType(String streamType, String localType, value) : super(streamType, localType, value);

  @override
  bool validate() {
    return super.validate() && true;
  }
}

class FireDateType extends FireType with FireBasicType {
  FireDateType(String streamType, String localType, value) : super(streamType, localType, value);

  @override
  bool validate() {
    return super.validate() && true;
  }
}

class FireTextType extends FireType with FireBasicType {
  FireTextType(String streamType, String localType, value) : super(streamType, localType, value);

  @override
  bool validate() {
    return super.validate() && true;
  }
}

class FireByteType extends FireType with FireBasicType {
  FireByteType(String streamType, String localType, value) : super(streamType, localType, value);

  @override
  bool validate() {
    return super.validate() && true;
  }
}

class FireGeographicalType extends FireType with FireComplexType {
  FireGeographicalType(String streamType, String localType, value)
      : super(streamType, localType, value);

  @override
  bool validate() {
    return super.validate() && true;
  }
}

class FireArrayType extends FireType with FireIterableType {
  FireArrayType(String streamType, String localType, value) : super(streamType, localType, value);

  @override
  bool validate() {
    return super.validate() && true;
  }
}

class FireMapType extends FireType with FireComplexType {
  FireMapType(String streamType, String localType, value) : super(streamType, localType, value);

  @override
  bool validate() {
    return super.validate() && true;
  }
}

class FireReferenceType extends FireType {
  FireReferenceType(String streamType, String localType, value)
      : super(streamType, localType, value);

  @override
  bool validate() {
    return super.validate() && true;
  }
}
