import 'dart:io';

void main() {
  stdout.write("Entrez votre âge : ");
  String? saisie = stdin.readLineSync();
  int age = int.parse(saisie!);
  print("Votre âge est $age ans");
}
