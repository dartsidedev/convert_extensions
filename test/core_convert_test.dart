import 'dart:convert';

import 'package:convert_extensions/core_convert.dart';
import 'package:test/test.dart';

void main() {
  test('asciiDecoded', () {
    expect([99, 111, 110, 118, 101, 114, 116].asciiDecoded, 'convert');
  });

  test('asciiEncoded', () {
    expect('convert'.asciiEncoded, [99, 111, 110, 118, 101, 114, 116]);
    expect(() => 'cönvert'.asciiEncoded, throwsArgumentError);
  });

  test('base64Encoded', () {
    expect([99, 111, 110, 118, 101, 114, 116].base64Encoded, 'Y29udmVydA==');
  });

  test('base64Decoded', () {
    expect('Y29udmVydA=='.base64Decoded, [99, 111, 110, 118, 101, 114, 116]);
  });

  test('base64UrlEncoded', () {
    expect([99, 111, 110, 118, 101, 114, 116].base64UrlEncoded, 'Y29udmVydA==');
  });

  test('base64UrlDecoded', () {
    expect('Y29udmVydA=='.base64UrlDecoded, [99, 111, 110, 118, 101, 114, 116]);
  });

  test('base64Encoded (with UTF8)', () {
    expect('convert'.utf8Encoded.base64Encoded, 'Y29udmVydA==');
  });

  test('base64Decoded (with UTF8)', () {
    expect('Y29udmVydA=='.base64Decoded.utf8Decoded, 'convert');
  });

  test('base64Encoded and base64UrlEncoded (with UTF8)', () {
    expect('>">'.utf8Encoded.base64Encoded, 'PiI+');
    expect('>">'.utf8Encoded.base64UrlEncoded, 'PiI-');
  });

  test('htmlEscaped', () {
    expect(
      'import "dart:convert"; // << Import & name'.htmlEscaped,
      'import &quot;dart:convert&quot;; &#47;&#47; &lt;&lt; Import &amp; name',
    );
  });

  test('htmlEscape', () {
    expect(
      'import "dart:convert"; // << Import & name'.htmlEscape(
        HtmlEscapeMode(
          escapeSlash: false,
          escapeQuot: true,
          escapeLtGt: true,
        ),
      ),
      'import &quot;dart:convert&quot;; // &lt;&lt; Import &amp; name',
    );
  });

  test('jsonDecoded', () {
    expect('{"convert":true}'.jsonDecoded, {'convert': true});
  });

  test('jsonEncoded', () {
    expect({'convert': true}.jsonEncoded, '{"convert":true}');
  });

  test('jsonEncode', () {
    expect(
      {'convert': true}.jsonEncode(indent: '  '),
      '{\n  "convert": true\n}',
    );
  });

  test('jsonUtf8Encoded', () {
    expect(
      {'convert': 1}.jsonUtf8Encoded,
      [123, 34, 99, 111, 110, 118, 101, 114, 116, 34, 58, 49, 125],
    );
  });

  test('latin1Encoded', () {
    expect('convert'.latin1Encoded, [99, 111, 110, 118, 101, 114, 116]);
    expect('cönvert'.latin1Encoded, [99, 246, 110, 118, 101, 114, 116]);
  });

  test('latin1Decoded', () {
    expect([99, 111, 110, 118, 101, 114, 116].latin1Decoded, 'convert');
    expect([99, 246, 110, 118, 101, 114, 116].latin1Decoded, 'cönvert');
  });

  test('utf8Encoded', () {
    expect('convert'.utf8Encoded, [99, 111, 110, 118, 101, 114, 116]);
    expect('cönvert'.utf8Encoded, [99, 195, 182, 110, 118, 101, 114, 116]);
  });

  test('utf8Decoded', () {
    expect([99, 111, 110, 118, 101, 114, 116].utf8Decoded, 'convert');
    expect([99, 195, 182, 110, 118, 101, 114, 116].utf8Decoded, 'cönvert');
  });
}
