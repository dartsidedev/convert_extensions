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

  // Basic Auth (combined)
  const username = 'johndoe';
  const password = r'p@$$w0rd';

  final key = '$username:$password'.utf8Encoded.base64Encoded;

  print('Basic $key');
}
