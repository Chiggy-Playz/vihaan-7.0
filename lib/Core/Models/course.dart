import 'dart:convert';

Course courseFromMap(String str) => Course.fromMap(json.decode(str));

String courseToMap(Course data) => json.encode(data.toMap());

class Course {
  String id;
  String name;
  String icon;  // path

  Course({
    required this.id,
    required this.name,
    required this.icon,
  });

  factory Course.fromMap(Map<String, dynamic> json) => Course(
        id: json["id"],
        name: json["name"],
        icon: json["icon"]
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "icon": icon,
      };
}
