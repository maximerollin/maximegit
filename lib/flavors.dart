enum Flavor { prod }

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'maximegit';
      default:
        return 'title';
    }
  }

  static String get apiBaseUrl {
    switch (appFlavor) {
      case Flavor.prod:
        return 'null';
      default:
        return 'http://localhost:8000';
    }
  }
}
