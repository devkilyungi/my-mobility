class User {
  final String imagePath;
  String name;
  String email;
  String about;

  User(
      {required this.imagePath,
      required this.name,
      required this.email,
      required this.about});

  void setName(String name) {
    this.name = name;
  }

  void setEmail(String email) {
    this.email = email;
  }

  void setAbout(String about) {
    this.about = about;
  }
}
