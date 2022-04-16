/// A collection of static extension methods that expose common conversion
/// methods from the Dart core library (expect those from `dart:convert`).
library core_misc;

extension UriDecoded on String {
  String get uriDecoded {
    return Uri.decodeFull(this);
  }
}

extension UriEncoded on String {
  /// Converts with [Uri.encodeFull].
  String get uriEncoded {
    return Uri.encodeFull(this);
  }
}

extension UriComponentDecoded on String {
  /// Converts with [decodeComponent].
  String get uriComponentDecoded {
    return Uri.decodeComponent(this);
  }
}

extension UriComponentEncoded on String {
  /// Converts with [Uri.encodeComponent].
  String get uriComponentEncoded {
    return Uri.encodeComponent(this);
  }
}

extension UriQueryComponentDecoded on String {
  /// Converts with [Uri.decodeQueryComponent].
  String get uriQueryComponentDecoded {
    return Uri.decodeQueryComponent(this);
  }
}

extension UriQueryComponentEncoded on String {
  /// Converts with [Uri.encodeQueryComponent].
  String get uriQueryComponentEncoded {
    return Uri.encodeQueryComponent(this);
  }
}
