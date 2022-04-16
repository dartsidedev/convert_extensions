/// A collection of static extension methods that expose common conversion
/// methods from the `package:convert` package by the Dart team.
library package_convert;

import 'dart:typed_data';

import 'package:convert/convert.dart';

extension HexDecodedExtension on String {
  /// Converts hexadecimal strings to byte arrays with [hex.decoder].
  List<int> get hexDecoded {
    return hex.decoder.convert(this);
  }
}

extension HexEncodedExtension on List<int> {
  /// Converts byte arrays to hexadecimal strings with [hex.encoder].
  String get hexEncoded {
    return hex.encoder.convert(this);
  }
}

extension Latin2EncodedExtension on String {
  /// Converts to bytes with [latin2.encoder].
  Uint8List get latin2Encoded {
    return latin2.encoder.convert(this);
  }
}

extension Latin2DecodedExtension on List<int> {
  /// Converts to string with [latin2.decoder].
  String get latin2Decoded {
    return latin2.decoder.convert(this);
  }
}

extension Latin3EncodedExtension on String {
  /// Converts to bytes with [latin3.encoder].
  Uint8List get latin3Encoded {
    return latin3.encoder.convert(this);
  }
}

extension Latin3DecodedExtension on List<int> {
  /// Converts to string with [latin3.decoder].
  String get latin3Decoded {
    return latin3.decoder.convert(this);
  }
}

extension Latin4EncodedExtension on String {
  /// Converts to bytes with [latin4.encoder].
  Uint8List get latin4Encoded {
    return latin4.encoder.convert(this);
  }
}

extension Latin4DecodedExtension on List<int> {
  /// Converts to string with [latin4.decoder].
  String get latin4Decoded {
    return latin4.decoder.convert(this);
  }
}

extension Latin5EncodedExtension on String {
  /// Converts to bytes with [latin5.encoder].
  Uint8List get latin5Encoded {
    return latin5.encoder.convert(this);
  }
}

extension Latin5DecodedExtension on List<int> {
  /// Converts to string with [latin5.decoder].
  String get latin5Decoded {
    return latin5.decoder.convert(this);
  }
}

extension Latin6EncodedExtension on String {
  /// Converts to bytes with [latin6.encoder].
  Uint8List get latin6Encoded {
    return latin6.encoder.convert(this);
  }
}

extension Latin6DecodedExtension on List<int> {
  /// Converts to string with [latin6.decoder].
  String get latin6Decoded {
    return latin6.decoder.convert(this);
  }
}

extension Latin7EncodedExtension on String {
  /// Converts to bytes with [latin7.encoder].
  Uint8List get latin7Encoded {
    return latin7.encoder.convert(this);
  }
}

extension Latin7DecodedExtension on List<int> {
  /// Converts to string with [latin7.decoder].
  String get latin7Decoded {
    return latin7.decoder.convert(this);
  }
}

extension Latin8EncodedExtension on String {
  /// Converts to bytes with [latin8.encoder].
  Uint8List get latin8Encoded {
    return latin8.encoder.convert(this);
  }
}

extension Latin8DecodedExtension on List<int> {
  /// Converts to string with [latin8.decoder].
  String get latin8Decoded {
    return latin8.decoder.convert(this);
  }
}

extension Latin9EncodedExtension on String {
  /// Converts to bytes with [latin9.encoder].
  Uint8List get latin9Encoded {
    return latin9.encoder.convert(this);
  }
}

extension Latin9DecodedExtension on List<int> {
  /// Converts to string with [latin9.decoder].
  String get latin9Decoded {
    return latin9.decoder.convert(this);
  }
}

extension Latin10EncodedExtension on String {
  /// Converts to bytes with [latin10.encoder].
  Uint8List get latin10Encoded {
    return latin10.encoder.convert(this);
  }
}

extension Latin10DecodedExtension on List<int> {
  /// Converts to string with [latin10.decoder].
  String get latin10Decoded {
    return latin10.decoder.convert(this);
  }
}

extension LatinArabicEncodedExtension on String {
  /// Converts to bytes with [latinArabic.encoder].
  Uint8List get latinArabicEncoded {
    return latinArabic.encoder.convert(this);
  }
}

extension LatinArabicDecodedExtension on List<int> {
  /// Converts to string with [latinArabic.decoder].
  String get latinArabicDecoded {
    return latinArabic.decoder.convert(this);
  }
}

extension LatinCyrillicEncodedExtension on String {
  /// Converts to bytes with [latinCyrillic.encoder].
  Uint8List get latinCyrillicEncoded {
    return latinCyrillic.encoder.convert(this);
  }
}

extension LatinCyrillicDecodedExtension on List<int> {
  /// Converts to string with [latinCyrillic.decoder].
  String get latinCyrillicDecoded {
    return latinCyrillic.decoder.convert(this);
  }
}

extension LatinGreekEncodedExtension on String {
  /// Converts to bytes with [latinGreek.encoder].
  Uint8List get latinGreekEncoded {
    return latinGreek.encoder.convert(this);
  }
}

extension LatinGreekDecodedExtension on List<int> {
  /// Converts to string with [latinGreek.decoder].
  String get latinGreekDecoded {
    return latinGreek.decoder.convert(this);
  }
}

extension LatinHebrewEncodedExtension on String {
  /// Converts to bytes with [latinHebrew.encoder].
  Uint8List get latinHebrewEncoded {
    return latinHebrew.encoder.convert(this);
  }
}

extension LatinHebrewDecodedExtension on List<int> {
  /// Converts to string with [latinHebrew.decoder].
  String get latinHebrewDecoded {
    return latinHebrew.decoder.convert(this);
  }
}

extension LatinThaiEncodedExtension on String {
  /// Converts to bytes with [latinThai.encoder].
  Uint8List get latinThaiEncoded {
    return latinThai.encoder.convert(this);
  }
}

extension LatinThaiDecodedExtension on List<int> {
  /// Converts to string with [latinThai.decoder].
  String get latinThaiDecoded {
    return latinThai.decoder.convert(this);
  }
}

extension PercentDecodedExtension on String {
  /// Converts to byte arrays with [percent.decoder].
  List<int> get percentDecoded {
    return percent.decoder.convert(this);
  }
}

extension PercentEncodedExtension on List<int> {
  /// Converts to percent-encoded strings with [percent.encoder].
  String get percentEncoded {
    return percent.encoder.convert(this);
  }
}
