//
// Created on 20-10-2022 at 01:35 by Gunjan
class User {
  String name;
  String vId;
  String phoneNumber;
  String email;

  User({
    required this.name,
    required this.vId,
    required this.phoneNumber,
    required this.email,
  });

  User copyWith({
    String? name,
    String? vId,
    String? phoneNumber,
    String? email,
  }) {
    return User(
      name: name ?? this.name,
      vId: vId ?? this.vId,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'vId': vId,
      'phoneNumber': phoneNumber,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      vId: map['vId'] as String,
      phoneNumber: map['phoneNumber'] as String,
      email: map['email'] as String,
    );
  }
}
