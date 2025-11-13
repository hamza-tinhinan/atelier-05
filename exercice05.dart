import 'dart:io';

class NombreNegatifException implements Exception {
  String message;
  NombreNegatifException(this.message);

  @override
  String toString() => "Erreur : $message";
}

void main() {
  try {
    stdout.write("Entrez un nombre : ");
    int nombre = int.parse(stdin.readLineSync()!);

    if (nombre < 0) {
      throw NombreNegatifException("Le nombre ne peut pas être négatif !");
    }

    print("Le carré de $nombre est ${nombre * nombre}");
  } on NombreNegatifException catch (e) {
    print(e);
  } on FormatException {
    print("Veuillez entrer un nombre valide !");
  } finally {
    print("Fin du programme");
  }
}
