class User {
  int id = 0;
  String email = "";
  String fullName = "";
  String mobileNumber = "";
  String image = "";
  String password = "";
  int age = 0;
  String civilId = "";

  User({
    required this.id,
    required this.email,
    required this.fullName,
    required this.mobileNumber,
    required this.image,
    required this.password,
    required this.age,
    required this.civilId,
  });
  User.fronJson(Map json) {
    id = json['id'];
    email = json['email'];
    fullName = json["fullName"];
    mobileNumber = json['mobileNumber'];
    image = json['image'];
    password = json['password'];
    age = json['age'];
    civilId = json['civilId'];
  }

  User.def();
  void editProfile() {}
  void viewProfile() {}
  void logout() {}
  void login() {}
}
