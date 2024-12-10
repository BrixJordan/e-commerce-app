import 'package:crud/authentication/login.dart';
import 'package:flutter/material.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shop with Nike',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
      ),
      //logo of nike
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.jpg',
              height: 150,
            ),
            const SizedBox(
              height: 20,
            ),
            //tagline of nike
            const Text(
              'Just Do It!',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),

            const SizedBox(
              height: 20,
            ),
            //quote of nike
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                '"The best way to predict the future is to create it." - Nike',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
            ),
            //get started button
            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
                onPressed: () {
                  //navigator.push that lead to login page
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const login()));
                },
                child: const Text("Get Started"))
          ],
        ),
      ),
    );
  }
}
