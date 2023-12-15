extension DateTimeInSeconds on DateTime {
  int get inSeconds => difference(DateTime.now()).inSeconds;
}
