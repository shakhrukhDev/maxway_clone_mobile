class ConfirmLoginRequest {
  String? code;
  String? fcmToken;
  String? phone;

  ConfirmLoginRequest({this.code, this.fcmToken='', this.phone});

  ConfirmLoginRequest.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    fcmToken = json['fcm_token'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['fcm_token'] = fcmToken;
    data['phone'] = phone;
    return data;
  }
}
