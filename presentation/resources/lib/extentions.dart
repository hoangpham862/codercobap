extension ResourceExtension on String {
  String rsc() {
    final cleanPath = startsWith('/') ? substring(1) : this;
    return "packages/resources/assets/$cleanPath";
  }
}
