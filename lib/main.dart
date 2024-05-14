import 'package:evaly/evaly/bags_luggages.dart';
import 'package:evaly/evaly/bottomnavigation.dart';
import 'package:evaly/evaly/evaly_home.dart';
import 'package:evaly/evaly/evaly_splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: SplashPage(),debugShowCheckedModeBanner: false,
    );
  }
}