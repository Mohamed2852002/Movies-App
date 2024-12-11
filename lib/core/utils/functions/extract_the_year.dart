String extractTheYear(String? date) {
  if (date == null) {
    return 'Unknown';
  }
  if (date == '') {
    return 'Unknown';
  }
  DateTime dateTime = DateTime.parse(date);
  return dateTime.year.toString();
}
