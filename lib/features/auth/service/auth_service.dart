import 'package:nursery/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:nursery/constants/global_variables.dart';

class AuthService {
  //signup user
  void signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
        id: '',
        name: '',
        email: '',
        password: '',
        address: '',
        type: '',
        token: '',
      );

      http.Response res =await http.post(
        Uri.parse('$uri/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type':'application/json; charset=UTF-8',
        },
      );
    } catch (e) {}
  }
}
