class RegisterRequest {
  String? name;
  String? phone;
  String? registrationSource;
  String? tag;

  RegisterRequest({this.name, this.phone, this.tag, this.registrationSource});

  RegisterRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phone = json['phone'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['phone'] = phone;
    data['tag'] = tag;
    data['registration_source'] = registrationSource;
    return data;
  }
}
