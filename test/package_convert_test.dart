import 'package:convert_extensions/package_convert.dart';
import 'package:test/test.dart';

void main() {
  test('hexEncoded', () {
    expect('636f6e76657274'.hexDecoded, [99, 111, 110, 118, 101, 114, 116]);
  });

  test('hexDecoded', () {
    expect([99, 111, 110, 118, 101, 114, 116].hexEncoded, '636f6e76657274');
  });

  test('percentDecoded', () {
    expect('hi%2F%2B'.percentDecoded, [104, 105, 47, 43]);
    expect('hi/+'.percentDecoded, [104, 105, 47, 43]);
  });

  test('percentEncoded', () {
    expect([104, 105, 47, 43].percentEncoded, 'hi%2F%2B');
  });

  // These tests could be improved further, but remember, this package
  // and its extensions are only using the Dart team's convert package
  // so extensive testing of encoding/decoding is not necessary
  // in this package.

  test('latin2Encoded', () {
    expect('Hello'.latin2Encoded, [72, 101, 108, 108, 111]);
    expect(
      'Árvíztűrő tükörfúrógép'.latin2Encoded,
      [
        193,
        114,
        118,
        237,
        122,
        116,
        251,
        114,
        245,
        32,
        116,
        252,
        107,
        246,
        114,
        102,
        250,
        114,
        243,
        103,
        233,
        112,
      ],
    );
  });

  test('latin2Decoded', () {
    expect([72, 101, 108, 108, 111].latin2Decoded, 'Hello');
  });

  test('latin3Encoded', () {
    expect('Hello'.latin3Encoded, [72, 101, 108, 108, 111]);
    expect(
      () => 'Árvíztűrő tükörfúrógép'.latin3Encoded,
      throwsFormatException,
    );
  });

  test('latin3Decoded', () {
    expect([72, 101, 108, 108, 111].latin3Decoded, 'Hello');
  });

  test('latin4Encoded', () {
    expect('Hello'.latin4Encoded, [72, 101, 108, 108, 111]);
    expect(
      () => 'Árvíztűrő tükörfúrógép'.latin4Encoded,
      throwsFormatException,
    );
  });

  test('latin4Decoded', () {
    expect([72, 101, 108, 108, 111].latin4Decoded, 'Hello');
  });

  test('latin5Encoded', () {
    expect('Hello'.latin5Encoded, [72, 101, 108, 108, 111]);
    expect(
      () => 'Árvíztűrő tükörfúrógép'.latin5Encoded,
      throwsFormatException,
    );
  });

  test('latin5Decoded', () {
    expect([72, 101, 108, 108, 111].latin5Decoded, 'Hello');
  });

  test('latin6Encoded', () {
    expect('Hello'.latin6Encoded, [72, 101, 108, 108, 111]);
    expect(
      () => 'Árvíztűrő tükörfúrógép'.latin6Encoded,
      throwsFormatException,
    );
  });

  test('latin6Decoded', () {
    expect([72, 101, 108, 108, 111].latin6Decoded, 'Hello');
  });

  test('latin7Encoded', () {
    expect('Hello'.latin7Encoded, [72, 101, 108, 108, 111]);
    expect(
      () => 'Árvíztűrő tükörfúrógép'.latin7Encoded,
      throwsFormatException,
    );
  });

  test('latin7Decoded', () {
    expect([72, 101, 108, 108, 111].latin7Decoded, 'Hello');
  });

  test('latin8Encoded', () {
    expect('Hello'.latin8Encoded, [72, 101, 108, 108, 111]);
    expect(
      () => 'Árvíztűrő tükörfúrógép'.latin8Encoded,
      throwsFormatException,
    );
  });

  test('latin8Decoded', () {
    expect([72, 101, 108, 108, 111].latin8Decoded, 'Hello');
  });

  test('latin9Encoded', () {
    expect('Hello'.latin9Encoded, [72, 101, 108, 108, 111]);
    expect(
      () => 'Árvíztűrő tükörfúrógép'.latin9Encoded,
      throwsFormatException,
    );
  });

  test('latin9Decoded', () {
    expect([72, 101, 108, 108, 111].latin9Decoded, 'Hello');
  });

  test('latin10Encoded', () {
    expect('Hello'.latin10Encoded, [72, 101, 108, 108, 111]);
    expect(
      'Árvíztűrő tükörfúrógép'.latin10Encoded,
      [
        193,
        114,
        118,
        237,
        122,
        116,
        248,
        114,
        245,
        32,
        116,
        252,
        107,
        246,
        114,
        102,
        250,
        114,
        243,
        103,
        233,
        112
      ],
    );
  });

  test('latin10Decoded', () {
    expect([72, 101, 108, 108, 111].latin10Decoded, 'Hello');
  });

  test('latinArabicEncoded', () {
    expect('Hello'.latinArabicEncoded, [72, 101, 108, 108, 111]);
    expect(
      () => 'Árvíztűrő tükörfúrógép'.latinArabicEncoded,
      throwsFormatException,
    );
  });

  test('latinArabicDecoded', () {
    expect([72, 101, 108, 108, 111].latinArabicDecoded, 'Hello');
  });

  test('latinCyrillicEncoded', () {
    expect('Hello'.latinCyrillicEncoded, [72, 101, 108, 108, 111]);
    expect(
      () => 'Árvíztűrő tükörfúrógép'.latinCyrillicEncoded,
      throwsFormatException,
    );
  });

  test('latinCyrillicDecoded', () {
    expect([72, 101, 108, 108, 111].latinCyrillicDecoded, 'Hello');
  });

  test('latinGreekEncoded', () {
    expect('Hello'.latinGreekEncoded, [72, 101, 108, 108, 111]);
    expect(
      () => 'Árvíztűrő tükörfúrógép'.latinGreekEncoded,
      throwsFormatException,
    );
  });

  test('latinGreekDecoded', () {
    expect([72, 101, 108, 108, 111].latinGreekDecoded, 'Hello');
  });

  test('latinHebrewEncoded', () {
    expect('Hello'.latinHebrewEncoded, [72, 101, 108, 108, 111]);
    expect(
      () => 'Árvíztűrő tükörfúrógép'.latinHebrewEncoded,
      throwsFormatException,
    );
  });

  test('latinHebrewDecoded', () {
    expect([72, 101, 108, 108, 111].latinHebrewDecoded, 'Hello');
  });

  test('latinThaiEncoded', () {
    expect('Hello'.latinThaiEncoded, [72, 101, 108, 108, 111]);
    expect(
      () => 'Árvíztűrő tükörfúrógép'.latinThaiEncoded,
      throwsFormatException,
    );
  });

  test('latinThaiDecoded', () {
    expect([72, 101, 108, 108, 111].latinThaiDecoded, 'Hello');
  });
}
