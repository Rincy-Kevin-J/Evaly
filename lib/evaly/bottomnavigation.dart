import 'package:evaly/evaly/bags_luggages.dart';
import 'package:evaly/evaly/detail_page.dart';
import 'package:evaly/evaly/evaly_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  @override
  State<Bottom> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<Bottom> {
  int index = 0;
  List<Widget> screens = [
    Home(),
    Bags(),
    DetailsPage()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,

          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          onTap: (tappedindex) {
            setState(() {
              index = tappedindex;
            });
          },
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.heart), label: "WishList"),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_travel), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: "Dashboard"),
          ]),
      body: screens[index],
    );
  }
}
