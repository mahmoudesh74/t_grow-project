class LoginData {

  late final bool isAuthenticated;
  late final String token;

  LoginData.fromJson(Map<String, dynamic> json){
    isAuthenticated = json['isAuthenticated'];
    token = json['token'];
  }


}