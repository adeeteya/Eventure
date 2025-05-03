import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Contains all the bug reports
class BugReportsRecord extends FirestoreRecord {
  BugReportsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _description = snapshotData['Description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bug_Reports');

  static Stream<BugReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BugReportsRecord.fromSnapshot(s));

  static Future<BugReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BugReportsRecord.fromSnapshot(s));

  static BugReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BugReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BugReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BugReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BugReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BugReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBugReportsRecordData({
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class BugReportsRecordDocumentEquality implements Equality<BugReportsRecord> {
  const BugReportsRecordDocumentEquality();

  @override
  bool equals(BugReportsRecord? e1, BugReportsRecord? e2) {
    return e1?.description == e2?.description;
  }

  @override
  int hash(BugReportsRecord? e) => const ListEquality().hash([e?.description]);

  @override
  bool isValidKey(Object? o) => o is BugReportsRecord;
}
