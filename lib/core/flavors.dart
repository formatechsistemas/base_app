enum Flavor { dev, prod, test }

class F {
  /// Current app flavor
  static Flavor appFlavor = Flavor.prod;

  /// Returns if we are in dev flavor
  static bool get isDev => appFlavor == Flavor.dev;

  /// Returns if we are in prop flavor
  static bool get isProd => appFlavor == Flavor.prod;

  /// Returns if we are in test flavor
  static bool get isTest => appFlavor == Flavor.test;

  static const motorUrl = 'https://example.motor.com';

  /// Prints the message only if we are in the dev flavor
  static void printDev(dynamic message) {
    if (F.isDev) {
      // ignore: avoid_print
      print('[DEV] $message');
    }
  }

  static void log(dynamic message) {
    // ignore: avoid_print
    print('$message');
  }

  /// Works exactly like `assert` but on production env, instead of asserting and crashing,
  /// the error is just reported and the app continues the execution
  static void verify(bool condition, String error) {
    if (condition) {
      return;
    }

    if (!isProd) {
      assert(false, error);
    } else {
      try {
        assert(false, error);
      } catch (error, _) {
        return;
      }
    }
  }

  /// Gets the bases API url for the current flavor
  static String get baseApiURL {
    return motorUrl;
  }
}
