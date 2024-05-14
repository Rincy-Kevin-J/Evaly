import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'evaly_sign.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Sign()));
    });
    return Scaffold(
      backgroundColor: Colors.red[800],
      body: const Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(image: AssetImage("assets/icons/bag.png")),
          SizedBox(
            height: 40,
          ),
          Text(
            "V1.0.1",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "@ActiveITZone 2021",
            style: TextStyle(color: Colors.white, fontSize: 20),
          )
        ]),
      ),
    );
  }
}
