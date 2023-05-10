import 'package:http/http.dart' as http;
class HttpHelper{
  static Future<http.Response> loginRequest(String email , String password){
    var url = Uri.https('example.com', 'whatsit/create');
    return http.post(url,body: {
      "email":email,
      "password":password
    });
  }
}