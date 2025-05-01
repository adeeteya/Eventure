import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;

  /// Event title
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "type" field.
  String? _type;

  /// Event type
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "description" field.
  String? _description;

  /// Description of the event
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "header_text" field.
  String? _headerText;

  /// Top heading (from Step 2)
  String get headerText => _headerText ?? '';
  bool hasHeaderText() => _headerText != null;

  // "start_datetime" field.
  DateTime? _startDatetime;

  /// Start date & time
  DateTime? get startDatetime => _startDatetime;
  bool hasStartDatetime() => _startDatetime != null;

  // "end_datetime" field.
  DateTime? _endDatetime;

  /// End date & time
  DateTime? get endDatetime => _endDatetime;
  bool hasEndDatetime() => _endDatetime != null;

  // "location" field.
  String? _location;

  /// Text location
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "hosted_by" field.
  String? _hostedBy;

  /// Host name
  String get hostedBy => _hostedBy ?? '';
  bool hasHostedBy() => _hostedBy != null;

  // "template_image" field.
  String? _templateImage;

  /// ImagePath
  String get templateImage => _templateImage ?? '';
  bool hasTemplateImage() => _templateImage != null;

  // "created_by" field.
  DocumentReference? _createdBy;

  /// Who created the event
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "created_time" field.
  DateTime? _createdTime;

  /// Auto-set to Current Timestamp
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _type = snapshotData['type'] as String?;
    _description = snapshotData['description'] as String?;
    _headerText = snapshotData['header_text'] as String?;
    _startDatetime = snapshotData['start_datetime'] as DateTime?;
    _endDatetime = snapshotData['end_datetime'] as DateTime?;
    _location = snapshotData['location'] as String?;
    _hostedBy = snapshotData['hosted_by'] as String?;
    _templateImage = snapshotData['template_image'] as String?;
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? title,
  String? type,
  String? description,
  String? headerText,
  DateTime? startDatetime,
  DateTime? endDatetime,
  String? location,
  String? hostedBy,
  String? templateImage,
  DocumentReference? createdBy,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'type': type,
      'description': description,
      'header_text': headerText,
      'start_datetime': startDatetime,
      'end_datetime': endDatetime,
      'location': location,
      'hosted_by': hostedBy,
      'template_image': templateImage,
      'created_by': createdBy,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.type == e2?.type &&
        e1?.description == e2?.description &&
        e1?.headerText == e2?.headerText &&
        e1?.startDatetime == e2?.startDatetime &&
        e1?.endDatetime == e2?.endDatetime &&
        e1?.location == e2?.location &&
        e1?.hostedBy == e2?.hostedBy &&
        e1?.templateImage == e2?.templateImage &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.type,
        e?.description,
        e?.headerText,
        e?.startDatetime,
        e?.endDatetime,
        e?.location,
        e?.hostedBy,
        e?.templateImage,
        e?.createdBy,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
