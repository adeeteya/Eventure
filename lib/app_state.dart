import 'package:flutter/material.dart';
import '/backend/backend.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _SelectedTemplate = '';
  String get SelectedTemplate => _SelectedTemplate;
  set SelectedTemplate(String value) {
    _SelectedTemplate = value;
  }

  String _HeaderText = '\"Join us for our annual\"';
  String get HeaderText => _HeaderText;
  set HeaderText(String value) {
    _HeaderText = value;
  }

  String _TitleText = '\"Miller Family Picnic\"';
  String get TitleText => _TitleText;
  set TitleText(String value) {
    _TitleText = value;
  }

  String _DateTimeLocationText = 'July 12, 2020 | 3 PM The Winslow Park';
  String get DateTimeLocationText => _DateTimeLocationText;
  set DateTimeLocationText(String value) {
    _DateTimeLocationText = value;
  }

  bool _ShowHeaderEditor = false;
  bool get ShowHeaderEditor => _ShowHeaderEditor;
  set ShowHeaderEditor(bool value) {
    _ShowHeaderEditor = value;
  }

  bool _ShowTitleEditor = false;
  bool get ShowTitleEditor => _ShowTitleEditor;
  set ShowTitleEditor(bool value) {
    _ShowTitleEditor = value;
  }

  bool _ShowDateEditor = false;
  bool get ShowDateEditor => _ShowDateEditor;
  set ShowDateEditor(bool value) {
    _ShowDateEditor = value;
  }

  String _eventTitle = '';
  String get eventTitle => _eventTitle;
  set eventTitle(String value) {
    _eventTitle = value;
  }

  String _eventType = '';
  String get eventType => _eventType;
  set eventType(String value) {
    _eventType = value;
  }

  String _eventDescription = '';
  String get eventDescription => _eventDescription;
  set eventDescription(String value) {
    _eventDescription = value;
  }

  DateTime? _startDateTime;
  DateTime? get startDateTime => _startDateTime;
  set startDateTime(DateTime? value) {
    _startDateTime = value;
  }

  DateTime? _endDateTime;
  DateTime? get endDateTime => _endDateTime;
  set endDateTime(DateTime? value) {
    _endDateTime = value;
  }

  String _eventLocation = '';
  String get eventLocation => _eventLocation;
  set eventLocation(String value) {
    _eventLocation = value;
  }

  String _eventHost = '';
  String get eventHost => _eventHost;
  set eventHost(String value) {
    _eventHost = value;
  }

  String _eventLink = '';
  String get eventLink => _eventLink;
  set eventLink(String value) {
    _eventLink = value;
  }

  DocumentReference? _newEventDoc;
  DocumentReference? get newEventDoc => _newEventDoc;
  set newEventDoc(DocumentReference? value) {
    _newEventDoc = value;
  }

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
}
