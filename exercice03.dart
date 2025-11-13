void main() {
  try {
    verifierMotdepasse("123hhgkggfu");
  } catch (e) {
    print("Erreur : $e");
  }
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception("Le mot de passe doit contenir au moins 6 caractères");
  } else {
    print("Mot de passe valide !");
  }
}
