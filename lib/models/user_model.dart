import 'package:flutter/foundation.dart';

@immutable
class UserModel {
  final String email;
  final String name;
  final String profilePic;
  final String mostRecentSchool;
  final String mostRecentDegree;
  final String uid;
  final String bio;
  const UserModel({
    required this.email,
    required this.name,
    required this.profilePic,
    required this.mostRecentSchool,
    required this.mostRecentDegree,
    required this.uid,
    required this.bio,
  });

  UserModel copyWith({
    String? email,
    String? name,
    String? profilePic,
    String? mostRecentSchool,
    String? mostRecentDegree,
    String? uid,
    String? bio,
  }) {
    return UserModel(
      email: email ?? this.email,
      name: name ?? this.name,
      profilePic: profilePic ?? this.profilePic,
      mostRecentSchool: mostRecentSchool ?? this.mostRecentSchool,
      mostRecentDegree: mostRecentDegree ?? this.mostRecentDegree,
      uid: uid ?? this.uid,
      bio: bio ?? this.bio,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'email': email});
    result.addAll({'name': name});
    result.addAll({'profilePic': profilePic});
    result.addAll({'mostRecentSchool': mostRecentSchool});
    result.addAll({'mostRecentDegree': mostRecentDegree});
    result.addAll({'bio': bio});

    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      profilePic: map['profilePic'] ?? '',
      mostRecentSchool: map['mostRecentSchool'] ?? '',
      mostRecentDegree: map['mostRecentDegree'] ?? '',
      uid: map['\$id'] ?? '',
      bio: map['bio'] ?? '',
    );
  }

  @override
  String toString() {
    return 'UserModel(email: $email, name: $name, profilePic: $profilePic, mostRecentSchool: $mostRecentSchool, mostRecentDegree: $mostRecentDegree, uid: $uid, bio: $bio,)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.email == email &&
        other.name == name &&
        other.profilePic == profilePic &&
        other.mostRecentSchool == mostRecentSchool &&
        other.mostRecentDegree == mostRecentDegree &&
        other.uid == uid &&
        other.bio == bio;
  }

  @override
  int get hashCode {
    return email.hashCode ^
        name.hashCode ^
        profilePic.hashCode ^
        mostRecentSchool.hashCode ^
        mostRecentDegree.hashCode ^
        uid.hashCode ^
        bio.hashCode;
  }
}
