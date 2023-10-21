class LoginRequest {
  String? phone;
  String? tag;

  LoginRequest({this.phone, this.tag});

  LoginRequest.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['phone'] = phone;
    data['tag'] = tag;
    return data;
  }
}
