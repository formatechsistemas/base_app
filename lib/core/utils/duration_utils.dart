abstract class DurationUtil {
  /// Format any duration period to days/hours/minutes. Eg: 1d 7h 13m
  static String format(Duration duration) {
    if (duration.inSeconds == 0) {
      return '0m';
    }

    var seconds = duration.inSeconds;

    final months = seconds ~/ (31 * Duration.secondsPerDay);
    seconds -= months * (31 * Duration.secondsPerDay);
    final days = seconds ~/ Duration.secondsPerDay;
    seconds -= days * Duration.secondsPerDay;
    final hours = seconds ~/ Duration.secondsPerHour;
    seconds -= hours * Duration.secondsPerHour;
    final minutes = seconds ~/ Duration.secondsPerMinute;
    seconds -= minutes * Duration.secondsPerMinute;

    final tokens = <String>[];

    if (months > 0) {
      tokens.add('${months}m');
    }

    if (days > 0) {
      tokens.add('${days}d');
    }

    if (hours > 0) {
      tokens.add('${hours}h');
    }

    if (minutes > 0 && months == 0) {
      tokens.add('${minutes}m');
    }

    if (seconds > 0 && months == 0 && days == 0) {
      tokens.add('${seconds}s');
    }

    return tokens.join(' ');
  }
}
