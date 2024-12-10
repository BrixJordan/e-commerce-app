import 'package:crud/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  //duration
  Duration get loadingTime => const Duration(milliseconds: 2000);

  //login
  Future<String> _authUser(LoginData data) async {
    try {
      final response = await Supabase.instance.client.auth.signInWithPassword(
        email: data.name,
        password: data.password,
      );
      if (response.session != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => homescreen()));
        return '';
      } else {
        return 'Unknown error occurred during login';
      }
    } catch (e) {
      return e.toString();
    }
  }

  //forget password
  Future<String> _recoverPassword(String email) async {
    try {
      await Supabase.instance.client.auth.resetPasswordForEmail(email);
      return ''; // Password recovery request successful
    } catch (e) {
      return e.toString(); // Return error message if any
    }
  }

  //signup
  Future<String> _signupUser(SignupData data) async {
    try {
      final response = await Supabase.instance.client.auth.signUp(
        email: data.name!,
        password: data.password!,
      );

      if (response.user != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => login()));
        return ''; // Signup successful
      } else {
        return 'Unknown error occurred during signup';
      }
    } catch (e) {
      return e.toString(); // Return error message if any
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterLogin(
        onLogin: _authUser,
        onRecoverPassword: _recoverPassword,
        onSignup: _signupUser,
      ),
    );
  }
}
