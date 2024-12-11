String convertToHours(int totalMinutes) {
  int hours = totalMinutes ~/ 60;
  int minutes = totalMinutes % 60;
  return '${hours}h ${minutes}m';
}
