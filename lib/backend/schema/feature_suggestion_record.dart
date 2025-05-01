import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Collections which contains all features suggested by a user.
class FeatureSuggestionRecord extends FirestoreRecord {
  FeatureSuggestionRecord._(
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
      FirebaseFirestore.instance.collection('Feature_Suggestion');

  static Stream<FeatureSuggestionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeatureSuggestionRecord.fromSnapshot(s));

  static Future<FeatureSuggestionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FeatureSuggestionRecord.fromSnapshot(s));

  static FeatureSuggestionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeatureSuggestionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeatureSuggestionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeatureSuggestionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeatureSuggestionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeatureSuggestionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeatureSuggestionRecordData({
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeatureSuggestionRecordDocumentEquality
    implements Equality<FeatureSuggestionRecord> {
  const FeatureSuggestionRecordDocumentEquality();

  @override
  bool equals(FeatureSuggestionRecord? e1, FeatureSuggestionRecord? e2) {
    return e1?.description == e2?.description;
  }

  @override
  int hash(FeatureSuggestionRecord? e) =>
      const ListEquality().hash([e?.description]);

  @override
  bool isValidKey(Object? o) => o is FeatureSuggestionRecord;
}
