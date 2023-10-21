import 'dart:convert';
/// message : "Code has been sent"

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));
String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());
class LoginResponse {
  LoginResponse({
      String? message,}){
    _message = message;
}

  LoginResponse.fromJson(dynamic json) {
    _message = json['message'];
  }
  String? _message;
LoginResponse copyWith({  String? message,
}) => LoginResponse(  message: message ?? _message,
);
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    return map;
  }

}