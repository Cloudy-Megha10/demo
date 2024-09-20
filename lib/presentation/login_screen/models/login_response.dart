// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
    String message;
    Data data;

    LoginResponse({
        required this.message,
        required this.data,
    });

    factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        message: json["message"],
        data: Data.fromJson((json["data"]) == "null" ? "Invalid credentials" : json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    int userId;
    String username;
    String email;
    String memberNumber;
    String role;
    int clubId;

    Data({
        required this.userId,
        required this.username,
        required this.email,
        required this.memberNumber,
        required this.role,
        required this.clubId,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        userId: json["user_id"],
        username: json["username"],
        email: json["email"],
        memberNumber: json["member_number"],
        role: json["role"],
        clubId: json["club_id"],
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "username": username,
        "email": email,
        "member_number": memberNumber,
        "role": role,
        "club_id": clubId,
    };
}
