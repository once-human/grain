import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String apiUrl = "https://grain.matviran.com/api/auth.php";

  // Register user
  Future<String> registerUser(String name, String email, String password) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      body: {
        "register": "1",
        "name": name,
        "email": email,
        "password": password,
      },
    );

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return data['message'];
    } else {
      throw Exception('Failed to register user');
    }
  }

  // Login user
  Future<String> loginUser(String email, String password) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      body: {
        "login": "1",
        "email": email,
        "password": password,
      },
    );

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      if (data['message'] == "Login successful!") {
        return "Login successful";
      } else {
        return "Invalid credentials";
      }
    } else {
      throw Exception('Failed to login user');
    }
  }
}
