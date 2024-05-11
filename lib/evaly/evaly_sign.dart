import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(
                        fit: BoxFit.contain,
                          image: AssetImage("assets/icons/bag.png"))),
            ),
            Text("Join Active eCommerce",style: TextStyle(fontSize: 30,color: Colors.red[800],fontWeight: FontWeight.bold),),

          ]),
        ),
      ),
    );
  }
}
