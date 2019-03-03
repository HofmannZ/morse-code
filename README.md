# Morse Code

[![version][version-badge]][package]
[![MIT License][license-badge]][license]
[![PRs Welcome][prs-badge]](http://makeapullrequest.com)

[![Watch on GitHub][github-watch-badge]][github-watch]
[![Star on GitHub][github-star-badge]][github-star]

## Usage

Fist depend on the libary by ading this to your package's `pubspec.yaml`:

```yaml
dependencies:
  flutter_morse: ^0.1.2
```

Now inside your Dart code you can import it.

```dart
import 'package:flutter_morse/flutter_morse.dart';
```

For this example we're going to use the following morse code string:

```dart
final String encodedMessage = '.... . .-.. .-.. --- / .-- --- .-. .-.. -..';
```

There are two ways to decode a morse code string. Either provide de encoded string as an argument to the constructor, and call the `decode` method.

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

## Contributing

Feel free to open a PR with any suggetions!

[version-badge]: https://img.shields.io/badge/pub-v0.1.2-orange.svg
[package]: https://pub.dartlang.org/packages/flutter_morse
[license-badge]: https://img.shields.io/github/license/fatihbalsoy/morse-code.svg?style=flat-square
[license]: https://github.com/fatihbalsoy/morse-code/blob/master/LICENSE
[prs-badge]: https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square
[prs]: http://makeapullrequest.com
[github-watch-badge]: https://img.shields.io/github/watchers/fatihbalsoy/morse-code.svg?style=social
[github-watch]: https://github.com/fatihbalsoy/morse-code/watchers
[github-star-badge]: https://img.shields.io/github/stars/fatihbalsoy/morse-code.svg?style=social
[github-star]: https://github.com/fatihbalsoy/morse-code/stargazers
