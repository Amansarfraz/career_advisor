class User {
  final String email;
  final String? name; // optional if you want to expand later

  User({required this.email, this.name});

  // From JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(email: json['email'] ?? '', name: json['name']);
  }

  // To JSON
  Map<String, dynamic> toJson() {
    return {'email': email, 'name': name};
  }
}
