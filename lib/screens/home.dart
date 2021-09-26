import 'package:flutter/material.dart';
import 'package:flutter_login_register/screens/login.dart';
import 'package:flutter_login_register/screens/register.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login & Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: Column(
          children: [
            Image.asset('assets/images/logo.jpg'),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                label: Text(
                  'Register',
                  style: TextStyle(fontSize: 20),
                ),
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => RegisterScreen()));
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                label: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),
                ),
                icon: Icon(Icons.login),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => LoginScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
