import 'package:test/test.dart';

import 'package:morse_code/morse_code.dart';

void main() {
  final _morse = new Morse();

  final String alphabet = 'abcdefghijklmnopqrstuvwxyz';
  final String helloWorld = 'hello world';
  final String helloAllCaps = 'HELLO WORLD';
  final String helloNormal = 'Hello World';
  final String numbers = '1234567890';
  final String special = '!@\$&()_+-=;:\'",./?';

  final String encodedHelloWorld = '.... . .-.. .-.. --- / .-- --- .-. .-.. -..';
  final String encodedAlphabet = '.- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --..';
  final String encodedNumbers = '.---- ..--- ...-- ....- ..... -.... --... ---.. ----. -----';
  final String encodedSpecChars = '-.-.-- .--.-. ...-..- .-... -.--. -.--.- ..--.- .-.-. -....- -...- -.-.-. ---... .----. .-..-. --..-- .-.-.- -..-. ..--..';

  test('ciphers message via constructor', () {
    final morse1 = new Morse(encodedHelloWorld);
    final morse2 = new Morse(helloWorld);

    expect(morse1.decode(), helloWorld);
    expect(morse2.encode(), encodedHelloWorld);
  });

  test('ciphers message via method', () {
    expect(_morse.decode(encodedHelloWorld), helloWorld);
    expect(_morse.encode(helloWorld), encodedHelloWorld);
  });

  test('ciphers capital letters', () {
    expect(_morse.decode(encodedHelloWorld).toUpperCase(), helloAllCaps);
    expect(_morse.encode(helloAllCaps).toUpperCase(), encodedHelloWorld);
  });

  test('encode both capital and lower cased letters', () {
    expect(_morse.decode(encodedHelloWorld), helloNormal.toLowerCase());
    expect(_morse.encode(helloNormal), encodedHelloWorld);
  });

  test('ciphers alphabet', () {
    expect(_morse.decode(encodedAlphabet), alphabet);
    expect(_morse.encode(alphabet), encodedAlphabet);
  });

  test('ciphers numbers', () {
    expect(_morse.decode(encodedNumbers), numbers);
    expect(_morse.encode(numbers), encodedNumbers);
  });

  test('ciphers special characters', () {
    expect(_morse.decode(encodedSpecChars), special);
    expect(_morse.encode(special), encodedSpecChars);
  });
}