import 'package:morse_code/morse_code.dart';

main(){
  ////////////
  // METHOD //
  ////////////
  // Decode morse
  final decodeMorse = Morse().decode('.... . .-.. .-.. --- / .-- --- .-. .-.. -..');
  print(decodeMorse); // hello world

  // Encode morse
  final encodeMorse = Morse().encode('Hello World');
  print(encodeMorse); // .... . .-.. .-.. --- / .-- --- .-. .-.. -..

  /////////////////
  // CONSTRUCTOR //
  /////////////////
  // Decode morse
  final helloEncoded = new Morse('... --- ...');
  final decoded = helloEncoded.decode();
  print(decoded); // sos

  // Encode morse
  final helloWorld = new Morse('SOS');
  final encoded = helloWorld.encode();
  print(encoded); // ... --- ...
}