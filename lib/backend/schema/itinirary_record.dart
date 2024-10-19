import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItiniraryRecord extends FirestoreRecord {
  ItiniraryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _city = snapshotData['city'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('itinirary');

  static Stream<ItiniraryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItiniraryRecord.fromSnapshot(s));

  static Future<ItiniraryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItiniraryRecord.fromSnapshot(s));

  static ItiniraryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItiniraryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItiniraryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItiniraryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItiniraryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItiniraryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItiniraryRecordData({
  String? city,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'city': city,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItiniraryRecordDocumentEquality implements Equality<ItiniraryRecord> {
  const ItiniraryRecordDocumentEquality();

  @override
  bool equals(ItiniraryRecord? e1, ItiniraryRecord? e2) {
    return e1?.city == e2?.city && e1?.date == e2?.date;
  }

  @override
  int hash(ItiniraryRecord? e) => const ListEquality().hash([e?.city, e?.date]);

  @override
  bool isValidKey(Object? o) => o is ItiniraryRecord;
}
