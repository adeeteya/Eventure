import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isNewUser = prefs.getBool('ff_isNewUser') ?? _isNewUser;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  /// Boolean Value to Indicate whether the navbar is open or closed
  bool _navOpen = false;
  bool get navOpen => _navOpen;
  set navOpen(bool value) {
    _navOpen = value;
  }

  /// Current Selected NavBar Index
  int _selectedNav = 0;
  int get selectedNav => _selectedNav;
  set selectedNav(int value) {
    _selectedNav = value;
  }

  /// input fields of the event
  EventStruct _eventInputFields = EventStruct.fromSerializableMap(jsonDecode(
      '{\"title\":\"\\\"\\\"\",\"description\":\"\\\"\\\"\",\"template_id\":\"0\",\"template_header\":\"\\\"\\\"\",\"template_body\":\"\\\"\\\"\",\"template_footer\":\"\\\"\\\"\",\"start_datetime\":\"1746112020000\",\"end_datetime\":\"1746198420000\",\"location\":\"Chennai\",\"created_by\":\"/Users/Kl8gTWfPDvdqub6170ugT2Q6lM83\",\"created_time\":\"1746112080000\"}'));
  EventStruct get eventInputFields => _eventInputFields;
  set eventInputFields(EventStruct value) {
    _eventInputFields = value;
  }

  void updateEventInputFieldsStruct(Function(EventStruct) updateFn) {
    updateFn(_eventInputFields);
  }

  EventTypes? _currentFilter;
  EventTypes? get currentFilter => _currentFilter;
  set currentFilter(EventTypes? value) {
    _currentFilter = value;
  }

  DocumentReference? _editEventIdentifier;
  DocumentReference? get editEventIdentifier => _editEventIdentifier;
  set editEventIdentifier(DocumentReference? value) {
    _editEventIdentifier = value;
  }

  bool _isNewUser = false;
  bool get isNewUser => _isNewUser;
  set isNewUser(bool value) {
    _isNewUser = value;
    prefs.setBool('ff_isNewUser', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
