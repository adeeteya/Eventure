import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RsvpRecord extends FirestoreRecord {
  RsvpRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "event_ref" field.
  DocumentReference? _eventRef;
  DocumentReference? get eventRef => _eventRef;
  bool hasEventRef() => _eventRef != null;

  void _initializeFields() {
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _eventRef = snapshotData['event_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RSVP');

  static Stream<RsvpRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RsvpRecord.fromSnapshot(s));

  static Future<RsvpRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RsvpRecord.fromSnapshot(s));

  static RsvpRecord fromSnapshot(DocumentSnapshot snapshot) => RsvpRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RsvpRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RsvpRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RsvpRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RsvpRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRsvpRecordData({
  DocumentReference? userRef,
  DocumentReference? eventRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_ref': userRef,
      'event_ref': eventRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class RsvpRecordDocumentEquality implements Equality<RsvpRecord> {
  const RsvpRecordDocumentEquality();

  @override
  bool equals(RsvpRecord? e1, RsvpRecord? e2) {
    return e1?.userRef == e2?.userRef && e1?.eventRef == e2?.eventRef;
  }

  @override
  int hash(RsvpRecord? e) =>
      const ListEquality().hash([e?.userRef, e?.eventRef]);

  @override
  bool isValidKey(Object? o) => o is RsvpRecord;
}
