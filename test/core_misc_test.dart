import 'package:convert_extensions/core_misc.dart';
import 'package:test/test.dart';

void main() {
  test('uriDecoded', () {
    expect('convert%20this'.uriDecoded, 'convert this');
  });

  test('uriEncoded', () {
    expect('convert this'.uriEncoded, 'convert%20this');
  });

  test('uriComponentEncoded', () {
    expect('convert%20this'.uriComponentDecoded, 'convert this');
  });

  test('uriComponentEncoded', () {
    expect('convert this'.uriComponentEncoded, 'convert%20this');
  });

  test('uriQueryComponentDecoded', () {
    expect('convert+this'.uriQueryComponentDecoded, 'convert this');
  });

  test('uriQueryComponentEncoded', () {
    expect('convert this'.uriQueryComponentEncoded, 'convert+this');
  });
}
