class MotdepasseCourtException implements Exception {
  String message;
  MotdepasseCourtException(this.message);

  @override
  String toString() => "MotdepasseCourtException : $message";
}

void main() {
  try {
    verifierMotdepasse("abc");
  } on MotdepasseCourtException catch (e) {
    print(e);
  }
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException("Mot de passe trop court !");
  } else {
    print("Mot de passe accepté ");
  }
}
