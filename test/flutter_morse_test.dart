import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_morse/flutter_morse.dart';

void main() {
  final String encodedMessage = '.... . .-.. .-.. --- / .-- --- .-. .-.. -..';

  test('decodes message via constructor', () {
    final morse = new Morse(encodedMessage);

    expect(morse.decode(), 'HELLO WORLD');
  });

  test('decodes message via method', () {
    final morse = new Morse();

    expect(morse.decode(encodedMessage), 'HELLO WORLD');
  });
}