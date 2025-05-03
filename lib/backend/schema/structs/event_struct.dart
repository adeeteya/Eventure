// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// The event data type
class EventStruct extends FFFirebaseStruct {
  EventStruct({
    /// The Title of the event
    String? title,

    /// The type of the event
    EventTypes? type,

    /// The description of the event
    String? description,

    /// The template id selected by the user
    int? templateId,

    /// The header text of the template
    String? templateHeader,

    /// The body text of the template
    String? templateBody,

    /// The footer text of the template
    String? templateFooter,

    /// The start date and time of the event
    DateTime? startDatetime,

    /// The end date time of the event
    DateTime? endDatetime,

    /// The location of the event
    String? location,

    /// The created user reference of the event
    DocumentReference? createdBy,

    /// The time when the event was created
    DateTime? createdTime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _type = type,
        _description = description,
        _templateId = templateId,
        _templateHeader = templateHeader,
        _templateBody = templateBody,
        _templateFooter = templateFooter,
        _startDatetime = startDatetime,
        _endDatetime = endDatetime,
        _location = location,
        _createdBy = createdBy,
        _createdTime = createdTime,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "type" field.
  EventTypes? _type;
  EventTypes get type => _type ?? EventTypes.Birthday;
  set type(EventTypes? val) => _type = val;

  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "template_id" field.
  int? _templateId;
  int get templateId => _templateId ?? 0;
  set templateId(int? val) => _templateId = val;

  void incrementTemplateId(int amount) => templateId = templateId + amount;

  bool hasTemplateId() => _templateId != null;

  // "template_header" field.
  String? _templateHeader;
  String get templateHeader => _templateHeader ?? '';
  set templateHeader(String? val) => _templateHeader = val;

  bool hasTemplateHeader() => _templateHeader != null;

  // "template_body" field.
  String? _templateBody;
  String get templateBody => _templateBody ?? '';
  set templateBody(String? val) => _templateBody = val;

  bool hasTemplateBody() => _templateBody != null;

  // "template_footer" field.
  String? _templateFooter;
  String get templateFooter => _templateFooter ?? '';
  set templateFooter(String? val) => _templateFooter = val;

  bool hasTemplateFooter() => _templateFooter != null;

  // "start_datetime" field.
  DateTime? _startDatetime;
  DateTime? get startDatetime => _startDatetime;
  set startDatetime(DateTime? val) => _startDatetime = val;

  bool hasStartDatetime() => _startDatetime != null;

  // "end_datetime" field.
  DateTime? _endDatetime;
  DateTime? get endDatetime => _endDatetime;
  set endDatetime(DateTime? val) => _endDatetime = val;

  bool hasEndDatetime() => _endDatetime != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  set createdBy(DocumentReference? val) => _createdBy = val;

  bool hasCreatedBy() => _createdBy != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  set createdTime(DateTime? val) => _createdTime = val;

  bool hasCreatedTime() => _createdTime != null;

  static EventStruct fromMap(Map<String, dynamic> data) => EventStruct(
        title: data['title'] as String?,
        type: data['type'] is EventTypes
            ? data['type']
            : deserializeEnum<EventTypes>(data['type']),
        description: data['description'] as String?,
        templateId: castToType<int>(data['template_id']),
        templateHeader: data['template_header'] as String?,
        templateBody: data['template_body'] as String?,
        templateFooter: data['template_footer'] as String?,
        startDatetime: data['start_datetime'] as DateTime?,
        endDatetime: data['end_datetime'] as DateTime?,
        location: data['location'] as String?,
        createdBy: data['created_by'] as DocumentReference?,
        createdTime: data['created_time'] as DateTime?,
      );

  static EventStruct? maybeFromMap(dynamic data) =>
      data is Map ? EventStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'type': _type?.serialize(),
        'description': _description,
        'template_id': _templateId,
        'template_header': _templateHeader,
        'template_body': _templateBody,
        'template_footer': _templateFooter,
        'start_datetime': _startDatetime,
        'end_datetime': _endDatetime,
        'location': _location,
        'created_by': _createdBy,
        'created_time': _createdTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.Enum,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'template_id': serializeParam(
          _templateId,
          ParamType.int,
        ),
        'template_header': serializeParam(
          _templateHeader,
          ParamType.String,
        ),
        'template_body': serializeParam(
          _templateBody,
          ParamType.String,
        ),
        'template_footer': serializeParam(
          _templateFooter,
          ParamType.String,
        ),
        'start_datetime': serializeParam(
          _startDatetime,
          ParamType.DateTime,
        ),
        'end_datetime': serializeParam(
          _endDatetime,
          ParamType.DateTime,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'created_by': serializeParam(
          _createdBy,
          ParamType.DocumentReference,
        ),
        'created_time': serializeParam(
          _createdTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static EventStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        type: deserializeParam<EventTypes>(
          data['type'],
          ParamType.Enum,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        templateId: deserializeParam(
          data['template_id'],
          ParamType.int,
          false,
        ),
        templateHeader: deserializeParam(
          data['template_header'],
          ParamType.String,
          false,
        ),
        templateBody: deserializeParam(
          data['template_body'],
          ParamType.String,
          false,
        ),
        templateFooter: deserializeParam(
          data['template_footer'],
          ParamType.String,
          false,
        ),
        startDatetime: deserializeParam(
          data['start_datetime'],
          ParamType.DateTime,
          false,
        ),
        endDatetime: deserializeParam(
          data['end_datetime'],
          ParamType.DateTime,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        createdBy: deserializeParam(
          data['created_by'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Users'],
        ),
        createdTime: deserializeParam(
          data['created_time'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'EventStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventStruct &&
        title == other.title &&
        type == other.type &&
        description == other.description &&
        templateId == other.templateId &&
        templateHeader == other.templateHeader &&
        templateBody == other.templateBody &&
        templateFooter == other.templateFooter &&
        startDatetime == other.startDatetime &&
        endDatetime == other.endDatetime &&
        location == other.location &&
        createdBy == other.createdBy &&
        createdTime == other.createdTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        title,
        type,
        description,
        templateId,
        templateHeader,
        templateBody,
        templateFooter,
        startDatetime,
        endDatetime,
        location,
        createdBy,
        createdTime
      ]);
}

EventStruct createEventStruct({
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
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventStruct(
      title: title,
      type: type,
      description: description,
      templateId: templateId,
      templateHeader: templateHeader,
      templateBody: templateBody,
      templateFooter: templateFooter,
      startDatetime: startDatetime,
      endDatetime: endDatetime,
      location: location,
      createdBy: createdBy,
      createdTime: createdTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventStruct? updateEventStruct(
  EventStruct? event, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    event
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventStructData(
  Map<String, dynamic> firestoreData,
  EventStruct? event,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (event == null) {
    return;
  }
  if (event.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && event.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventData = getEventFirestoreData(event, forFieldValue);
  final nestedData = eventData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = event.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventFirestoreData(
  EventStruct? event, [
  bool forFieldValue = false,
]) {
  if (event == null) {
    return {};
  }
  final firestoreData = mapToFirestore(event.toMap());

  // Add any Firestore field values
  event.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventListFirestoreData(
  List<EventStruct>? events,
) =>
    events?.map((e) => getEventFirestoreData(e, true)).toList() ?? [];
