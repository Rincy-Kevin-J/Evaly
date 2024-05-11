import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var page = [
    {"Icon": Icons.home, 'name': "Popular"},
    {"Icon": Icons.access_time_outlined, 'name': "FlashSet"},
    {"Icon": Icons.fire_truck, 'name': "Evaly Store"},
    {"Icon": Icons.card_giftcard_outlined, 'name': "Voucher"},
  ];
  var diff = [
    {
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.OvrQkCBSwfFW-Ve_B5zSEAHaJ4&pid=Api&P=0&h=180",
      "names": "Bags & Luggage"
    },
    {
      "pic":
          "https://tse1.mm.bing.net/th?id=OIP._d_wSV3_MyGNq3-qjPHUaQAAAA&pid=Api&P=0&h=180",
      "names": "Beauty & Bodycare"
    },
    {
      "pic":
          "https://tse1.mm.bing.net/th?id=OIP.BmBRxFBpoIXqmhabWxwpFwHaLH&pid=Api&P=0&h=180",
      "names": "Books & Stationary"
    },
    {
      "pic":
          "https://tse2.mm.bing.net/th?id=OIP.tAZtpLwas9yqBLsTpL9-5QHaEK&pid=Api&P=0&h=180",
      "names": "Shoe"
    },
    {
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.yBkcswIntp3sqAw4MYCjfQHaHU&pid=Api&P=0&h=180",
      "names": "Mobiles"
    },
    {
      "pic":
          "https://tse1.mm.bing.net/th?id=OIP.ujrUC4P8eKRK2UkrglBV0gHaHa&pid=Api&P=0&h=180",
      "names": "Ethinic Wears"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            size: 35,
          ),
          centerTitle: true,
          title: Text(
            "evaly",
            style: TextStyle(fontSize: 40),
          ),
          actions: [
            Icon(
              Icons.person,
              size: 35,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  print("test");
                }
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_outlined),
                fillColor: Colors.grey,
                filled: true,
                focusColor: Colors.blue,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),
                hintText: 'What would you like to buy?',
              ),
            ),
            Container(
              height: 280,
              width: 430,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                          "https://tse3.explicit.bing.net/th?id=OIP.wN0btflCuFYtC3QCR1ucKwHaEQ&pid=Api&P=0&h=180/th?id=OIP.wN0btflCuFYtC3QCR1ucKwHaEQ&pid=Api&P=0&h=180"))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: GridView.count(
                  childAspectRatio: 1.8,
                  mainAxisSpacing: 5,
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  children: List.generate(
                    4,
                    (index) => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Icon(page[index]["Icon"] as IconData? ),
                        Icon(
                          // Icons.headphones,
                          page[index]["Icon"] as IconData?,
                          size: 30,
                          color: Colors.primaries[
                              Random().nextInt(Colors.primaries.length)],
                        ),
                        Text(
                          "${page[index]["name"]}",
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF9CAFAA)),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Brands",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Shops",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
                childAspectRatio: .6,
                mainAxisSpacing: 3,
                crossAxisSpacing: 1.2,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: List.generate(
                  6,
                  (index) => Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: Image(image: NetworkImage("${diff[index]["pic"]}"))),
                      Text(
                        "${diff[index]["names"]}",textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ))
          ]),
        ));
  }
}
