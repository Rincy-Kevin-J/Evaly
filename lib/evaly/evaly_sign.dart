import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'evaly_login.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  TextEditingController passController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage("assets/icons/bag.png"))),
            ),
            Text(
              "Join Active eCommerce",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.red[800],
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 28, left: 28),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Full Name'),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 28, left: 28),
              child: TextFormField(
                validator: (email) {
                  if (email!.isEmpty || !email.contains('@')) {
                    return 'email must be valid';
                  } else
                    return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email'),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 28, left: 28),
              child: TextFormField(
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return 'password is empty/check the lenght';
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password'),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 28, left: 28),
              child: TextFormField(
                validator: (confirmpassword) {
                  if (confirmpassword!.isEmpty ||
                      confirmpassword != passController.text) {
                    return 'password mismatch';
                  } else
                    return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Confirm password'),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            MaterialButton(
              onPressed: () {
                var valid = formKey.currentState!.validate();
                if (valid == true) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loginsign()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Registration failed')));
                }
              },
              color: Colors.red,
              minWidth: 300,
              height: 50,
              shape: const StadiumBorder(),
              child: const Text(
                'Sign up',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
                text: const TextSpan(
              text: 'Already have an account?',
              style: TextStyle(color: Colors.blueGrey, fontSize: 18),
            )),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Loginsign()));
              },
              color: Colors.yellow,
              minWidth: 300,
              height: 50,
              shape: const StadiumBorder(),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
        ),
      ),
    ));
  }
}
