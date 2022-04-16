/// A collection of static extension methods that expose common conversion
/// methods from the Dart core library (`dart:convert`).
library core_convert;

import 'dart:convert';
import 'dart:typed_data';

extension AsciiDecodedExtension on List<int> {
  /// Converts to string with [ascii.decoder].
  String get asciiDecoded {
    return ascii.decoder.convert(this);
  }
}

extension AsciiEncodedExtension on String {
  /// Converts to ASCII (bytes) with [ascii.encoder].
  Uint8List get asciiEncoded {
    return ascii.encoder.convert(this);
  }
}

extension Base64DecodedExtension on String {
  /// Converts to bytes with [base64.decoder].
  Uint8List get base64Decoded {
    return base64.decoder.convert(this);
  }
}

extension Base64EncodedExtension on List<int> {
  /// Converts to string with [base64.encoder].
  String get base64Encoded {
    return base64.encoder.convert(this);
  }
}

extension Base64UrlDecodedExtension on String {
  /// Converts to bytes with [base64Url.decoder].
  Uint8List get base64UrlDecoded {
    return base64Url.decoder.convert(this);
  }
}

extension Base64UrlEncodedExtension on List<int> {
  /// Converts to string with [base64Url.encoder].
  String get base64UrlEncoded {
    return base64Url.encoder.convert(this);
  }
}

extension HtmlEscapedExtension on String {
  /// Converts to string with [htmlEscape].
  String get htmlEscaped {
    return htmlEscape.convert(this);
  }
}

extension HtmlEscapeExtension on String {
  /// Converts to string with [HtmlEscape] with [mode].
  String htmlEscape(HtmlEscapeMode mode) {
    return HtmlEscape(mode).convert(this);
  }
}

extension JsonDecodedExtension on String {
  /// Converts to JSON with [json.decoder].
  dynamic get jsonDecoded {
    return json.decoder.convert(this);
  }
}

extension JsonEncodedExtension on Object? {
  /// Converts to JSON string with [json.encoder].
  String get jsonEncoded {
    return json.encoder.convert(this);
  }
}

extension JsonEncodeExtension on Object? {
  /// Converts to JSON string with [indent] and [toEncodable].
  String jsonEncode({
    String? indent,
    Object? Function(dynamic object)? toEncodable,
  }) {
    return JsonEncoder.withIndent(indent, toEncodable).convert(this);
  }
}

extension JsonUtf8EncodedExtension on Object? {
  /// Converts to bytes with [JsonUtf8Encoder].
  List<int> get jsonUtf8Encoded {
    return JsonUtf8Encoder().convert(this);
  }
}

extension Latin1DecodedExtension on List<int> {
  /// Converts to string with [latin1.decoder].
  String get latin1Decoded {
    return latin1.decoder.convert(this);
  }
}

extension Latin1EncodedExtension on String {
  /// Converts to bytes with [latin1.encoder].
  Uint8List get latin1Encoded {
    return latin1.encoder.convert(this);
  }
}

extension Utf8DecodedExtension on List<int> {
  /// Converts to string with [utf8.decoder].
  String get utf8Decoded {
    return utf8.decoder.convert(this);
  }
}

extension Utf8EncodedExtension on String {
  /// Converts to bytes with [utf8.encoder].
  Uint8List get utf8Encoded {
    return utf8.encoder.convert(this);
  }
}
