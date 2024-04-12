
import 'dart:convert';

UserInfo userInfoFromMap(String str) => UserInfo.fromMap(json.decode(str));

String userInfoToMap(UserInfo data) => json.encode(data.toMap());

class UserInfo {
    String id;
    String firstName;
    String lastName;
    int gems;
    int lives;

    UserInfo({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.gems,
        required this.lives,
    });

    factory UserInfo.fromMap(Map<String, dynamic> json) => UserInfo(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        gems: json["gems"],
        lives: json["lives"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "gems": gems,
        "lives": lives,
    };
}
