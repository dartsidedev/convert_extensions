# `convert_extensions`

> Common convert methods exposed as static extensions method from the Dart core library and the convert package. Base64, ASCII, UTF8, Latin1, JSON, and more.

The `convert_extensions` package is a collection of [extension methods](https://dart.dev/guides/language/extension-methods)
based on the [`dart:convert` core library](https://api.dart.dev/stable/dart-convert/dart-convert-library.html),
the [`package:convert` package by the Dart team](https://pub.dev/packages/convert),
and other conversion methods that are found in the Dart language.

These extension methods make it easier to read and write code that uses conversions as it hides the conversion complexity behind expressive getters and methods.

Encode or decode with UTF8, Base64, JSON (and many more) with a simple and expressive API.

[![Continuous Integration](https://github.com/dartsidedev/convert_extensions/workflows/Continuous%20Integration/badge.svg?branch=main)](https://github.com/dartsidedev/convert_extensions/actions) [![codecov](https://codecov.io/gh/dartsidedev/convert_extensions/branch/main/graph/badge.svg)](https://codecov.io/gh/dartsidedev/convert_extensions) [![convert_extensions](https://img.shields.io/pub/v/convert_extensions?label=convert_extensions&logo=dart)](https://pub.dev/packages/convert_extensions 'See convert_extensions package info on pub.dev') [![Published by dartside.dev](https://img.shields.io/static/v1?label=Published%20by&message=dartside.dev&logo=dart&logoWidth=30&color=40C4FF&labelColor=1d599b&labelWidth=100)](https://pub.dev/publishers/dartside.dev/packages) [![GitHub Stars Count](https://img.shields.io/github/stars/dartsidedev/convert_extensions?logo=github)](https://github.com/dartsidedev/convert_extensions 'Star me on GitHub!')

## Important links

* [Read the source code and **star the repo** on GitHub](https://github.com/dartsidedev/convert_extensions)
* [Open an issue on GitHub](https://github.com/dartsidedev/convert_extensions/issues)
* [See package on pub.dev](https://pub.dev/packages/convert_extensions)
* [Read the docs on pub.dev](https://pub.dev/documentation/convert_extensions/latest/)

**If you enjoy using this package, a thumbs-up on [pub.dev](https://pub.dev/packages/convert_extensions) would be highly appreciated! 👍💙.**

## Resources

* [`dart:convert` core library](https://api.dart.dev/stable/dart-convert/dart-convert-library.html) 
* [`package:convert` package by the Dart team](https://pub.dev/packages/convert) 

## Motivation

Encoding and decoding directly with the Dart core library (`dart:convert` and others) and the `package:convert`
by the Dart team can be clunky, and it's sometimes hard to remember how to use those APIs.

Via extension methods, this package makes it easier to convert via encoders and decoders.

Keep in mind, that this package only provides static extension methods, and the actual conversion is still done via the
the Dart core library (`dart:convert` and others) and the `package:convert` package by the Dart team.

## Usage

Just import the package, and the static extension methods will be added.

```dart
import 'package:convert_extensions/convert_extensions.dart';

void main() {
  // ASCII
  print([99, 111, 110, 118, 101, 114, 116].asciiDecoded);
  print('convert'.asciiEncoded);
  
  // Base64
  print([99, 111, 110, 118, 101, 114, 116].base64Encoded);
  print('Y29udmVydA=='.base64Decoded);
  
  // JSON
  print('{"convert":true}'.jsonDecoded);
  print({'convert': true}.jsonEncoded);
  
  // UTF8
  print('convert'.utf8Encoded);
  print([99, 111, 110, 118, 101, 114, 116].utf8Decoded);
  
  // URI
  print('convert%20this'.uriDecoded);
  print('convert this'.uriEncoded);
  
  // URI query component
  print('convert+this'.uriQueryComponentDecoded);
  print('convert this'.uriQueryComponentEncoded);
  
  // HEX
  print('636f6e76657274'.hexDecoded);
  print([99, 111, 110, 118, 101, 114, 116].hexEncoded);
  
  // Percent
  print('hi/+'.percentDecoded);
  print([104, 105, 47, 43].percentEncoded);
}
```

You can also combine these getters. As an example, this is how you would create a basic auth header:

```dart
void main() {
  const username = 'johndoe';
  const password = r'p@$$w0rd';
  
  final key = '$username:$password'.utf8Encoded.base64Encoded;
  
  print('Basic $key');
}
```

For all extension methods, see the [API reference](https://pub.dev/documentation/convert_extensions/latest/).

You can see more [usage examples in the `test` folder](https://github.com/dartsidedev/convert_extensions/tree/main/test).
