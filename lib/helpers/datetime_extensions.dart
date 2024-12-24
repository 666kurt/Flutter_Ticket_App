import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  String toEventDate() {
    return DateFormat('d MMMM • HH:mm').format(this);
  }

  String toOrderDate() {
    return DateFormat('d MMMM yyyy в HH:mm').format(this);
  }
}
