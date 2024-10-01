import 'package:intl/intl.dart';

String formatDate(DateTime date) {
  final DateFormat formatter = DateFormat('dd-MM-yyyy');

  return formatter.format(date);
}
