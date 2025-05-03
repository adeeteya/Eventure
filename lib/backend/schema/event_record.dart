import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventRecord extends FirestoreRecord {
  EventRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "type" field.
  EventTypes? _type;
  EventTypes? get type => _type;
  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "template_id" field.
  int? _templateId;
  int get templateId => _templateId ?? 0;
  bool hasTemplateId() => _templateId != null;

  // "template_header" field.
  String? _templateHeader;
  String get templateHeader => _templateHeader ?? '';
  bool hasTemplateHeader() => _templateHeader != null;

  // "template_body" field.
  String? _templateBody;
  String get templateBody => _templateBody ?? '';
  bool hasTemplateBody() => _templateBody != null;

  // "template_footer" field.
  String? _templateFooter;
  String get templateFooter => _templateFooter ?? '';
  bool hasTemplateFooter() => _templateFooter != null;

  // "start_datetime" field.
  DateTime? _startDatetime;
  DateTime? get startDatetime => _startDatetime;
  bool hasStartDatetime() => _startDatetime != null;

  // "end_datetime" field.
  DateTime? _endDatetime;
  DateTime? get endDatetime => _endDatetime;
  bool hasEndDatetime() => _endDatetime != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _type = snapshotData['type'] is EventTypes
        ? snapshotData['type']
        : deserializeEnum<EventTypes>(snapshotData['type']);
    _description = snapshotData['description'] as String?;
    _templateId = castToType<int>(snapshotData['template_id']);
    _templateHeader = snapshotData['template_header'] as String?;
    _templateBody = snapshotData['template_body'] as String?;
    _templateFooter = snapshotData['template_footer'] as String?;
    _startDatetime = snapshotData['start_datetime'] as DateTime?;
    _endDatetime = snapshotData['end_datetime'] as DateTime?;
    _location = snapshotData['location'] as String?;
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Event');

  static Stream<EventRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventRecord.fromSnapshot(s));

  static Future<EventRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventRecord.fromSnapshot(s));

  static EventRecord fromSnapshot(DocumentSnapshot snapshot) => EventRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventRecordData({
  String? title,
  EventTypes? type,
  String? description,
  int? templateId,
  String? templateHeader,
  String? templateBody,
  String? templateFooter,
  DateTime? startDatetime,
  DateTime? endDatetime,
  String? location,
  DocumentReference? createdBy,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'type': type,
      'description': description,
      'template_id': templateId,
      'template_header': templateHeader,
      'template_body': templateBody,
      'template_footer': templateFooter,
      'start_datetime': startDatetime,
      'end_datetime': endDatetime,
      'location': location,
      'created_by': createdBy,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventRecordDocumentEquality implements Equality<EventRecord> {
  const EventRecordDocumentEquality();

  @override
  bool equals(EventRecord? e1, EventRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.type == e2?.type &&
        e1?.description == e2?.description &&
        e1?.templateId == e2?.templateId &&
        e1?.templateHeader == e2?.templateHeader &&
        e1?.templateBody == e2?.templateBody &&
        e1?.templateFooter == e2?.templateFooter &&
        e1?.startDatetime == e2?.startDatetime &&
        e1?.endDatetime == e2?.endDatetime &&
        e1?.location == e2?.location &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(EventRecord? e) => const ListEquality().hash([
        e?.title,
        e?.type,
        e?.description,
        e?.templateId,
        e?.templateHeader,
        e?.templateBody,
        e?.templateFooter,
        e?.startDatetime,
        e?.endDatetime,
        e?.location,
        e?.createdBy,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is EventRecord;
}
