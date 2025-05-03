import 'package:collection/collection.dart';

/// Different Types of Events Available
enum EventTypes {
  Birthday,
  Reunion,
  Wedding,
  Party,
  Concert,
  Conference,
  Workshop,
  Webinar,
  Meetup,
  Sports,
  NetworkingEvent,
  CharityEvent,
  Exhibition,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (EventTypes):
      return EventTypes.values.deserialize(value) as T?;
    default:
      return null;
  }
}
