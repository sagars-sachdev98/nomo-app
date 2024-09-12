import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime?, String?> {
  const DateTimeConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json == null) return null;
    return DateFormat('MM/dd/yyyy').parse(json);
  }

  @override
  String? toJson(DateTime? object) {
    if (object == null) return null;
    return DateFormat('MM/dd/yyyy').format(object);
  }
}
