String convertToHours(int? totalMinutes) {
  if (totalMinutes == null) {
    return 'Unknown';
  }
  int hours = totalMinutes ~/ 60;
  int minutes = totalMinutes % 60;
  return '${hours}h ${minutes}m';
}
