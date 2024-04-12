import 'dart:convert';

Streak streakFromMap(String str) => Streak.fromMap(json.decode(str));

String streakToMap(Streak data) => json.encode(data.toMap());

class Streak {
    String id;
    String userId;
    DateTime streakStart;
    DateTime? streakEnd;

    Streak({
        required this.id,
        required this.userId,
        required this.streakStart,
        required this.streakEnd,
    });

    factory Streak.fromMap(Map<String, dynamic> json) => Streak(
        id: json["id"],
        userId: json["user_id"],
        streakStart: DateTime.parse(json["streak_start"]),
        streakEnd:  json["streak_end"] != null ? DateTime.parse(json["streak_end"]) : null,
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "streak_start": streakStart.toIso8601String(),
        "streak_end": streakEnd?.toIso8601String(),
    };
}