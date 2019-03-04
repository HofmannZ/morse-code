# Morse Code

[![version][version-badge]][package]
[![MIT License][license-badge]][license]
[![PRs Welcome][prs-badge]](http://makeapullrequest.com)

[![Watch on GitHub][github-watch-badge]][github-watch]
[![Star on GitHub][github-star-badge]][github-star]

## Usage

Fist depend on the libary by adding this to your package's `pubspec.yaml`:

```yaml
dependencies:
  morse_code: ^0.1.3+3
```

Now inside your Dart code you can import it.

```dart
import 'package:morse_code/morse_code.dart';
```

For this example we're going to use the following morse code string:

```dart
final String encodedMessage = '.... . .-.. .-.. --- / .-- --- .-. .-.. -..';
```

There are two ways to decode a morse code string. Either provide the encoded string as an argument to the constructor, and call the `decode` method.

```dart
final Morse morse = new Morse(encodedMessage);
String decodedMessage = morse.decode();

// Or combine the two, for more compact code:
String decodedMessage =  new Morse(encodedMessage).decode();
```

Or provide the encoded string as an argument to the `decode` method.

```dart
final Morse morse = new Morse();
String decodedMessage = morse.decode(encodedMessage);

// Or again combine the two, for more compact code:
String decodedMessage =  new Morse().decode(encodedMessage);
```

You can also use the `encode` method to convert text to morse code.

```dart
final String message = 'Hello World';
final Morse morse = new Morse(message);
String encodedMessage = morse.encode();

// Or combine the two, for more compact code:
String encodedMessage =  new Morse(message).encode();
```

## Contributing

Feel free to open a PR with any suggetions!

[version-badge]: https://img.shields.io/badge/pub-v0.1.3+3-orange.svg
[package]: https://pub.dartlang.org/packages/morse_code
[license-badge]: https://img.shields.io/github/license/HofmannZ/morse-code.svg?style=flat-square
[license]: https://github.com/HofmannZ/morse-code/blob/master/LICENSE
[prs-badge]: https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square
[prs]: http://makeapullrequest.com
[github-watch-badge]: https://img.shields.io/github/watchers/HofmannZ/morse-code.svg?style=social
[github-watch]: https://github.com/HofmannZ/morse-code/watchers
[github-star-badge]: https://img.shields.io/github/stars/HofmannZ/morse-code.svg?style=social
[github-star]: https://github.com/HofmannZ/morse-code/stargazers
