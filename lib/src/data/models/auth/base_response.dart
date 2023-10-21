
class BaseResponse {
  String? message;

  BaseResponse({this.message});

  BaseResponse.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Message'] = message;
    return data;
  }
}
