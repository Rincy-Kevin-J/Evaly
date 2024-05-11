import 'package:evaly/evaly/detail_page.dart';
import 'package:flutter/material.dart';

class Bags extends StatefulWidget {
  const Bags({super.key});

  @override
  State<Bags> createState() => _BagsState();
}

class _BagsState extends State<Bags> {
  var bag = [
    {
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.yeXvdmqxDoVjdmdhSfqPDwHaHa&pid=Api&P=0&h=180",
      'name': "EV21 New Stylish PU \nLeather Backpack Fo",
      "price": "1600.00"
    },
    {
      "pic":
          "https://tse3.mm.bing.net/th?id=OIP.jbKWLz9qRQ2KKkML2AFFVgHaG9&pid=Api&P=0&h=180",
      'name': "Black Polyester\n Backpack for men",
      "price": "2890.00"
    },
    {
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.7GufZT3rIeYYjnGvh9mBoAHaKh&pid=Api&P=0&h=180",
      'name': "EV-2732L Evton \n FAshion Backpack For Women",
      "price": "2200.00"
    },
    {
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.mWsrXfQyjpIAUdzeuXgR9gHaHa&pid=Api&P=0&h=180",
      'name': "Korean Backpack for\n male and Female",
      "price": "1600.00"
    },
    {
      "pic":
          "https://tse2.mm.bing.net/th?id=OIP.euibPfyEffA7TzvAYU-11QHaL6&pid=Api&P=0&h=180",
      'name': "EV21 New Stylish PU \nLeather Backpack Fo",
      "price": "1600.00"
    },
    {
      "pic":
          "https://tse2.mm.bing.net/th?id=OIP.PmNDGMfFoMXKK_p-VrdX-wHaHa&pid=Api&P=0&h=180",
      'name': "EV21 New Stylish PU \n Leather Backpack Fo",
      "price": "1600.00"
    },
    {
      "pic":
          "https://tse4.mm.bing.net/th?id=OIP.yeXvdmqxDoVjdmdhSfqPDwHaHa&pid=Api&P=0&h=180",
      'name': "EV21 New Stylish PU \nLeather Backpack Fo",
      "price": "1600.00"
    },
    {
      "pic":
          "https://tse3.mm.bing.net/th?id=OIP.jbKWLz9qRQ2KKkML2AFFVgHaG9&pid=Api&P=0&h=180",
      'name': "Black Polyester\n Backpack for men",
      "price": "2890.00"
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
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: .7,
          children: List.generate(
              6,
              (index) => Card(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailsPage(),
                        ));
                      },
                      child: Column(
                        children: [
                          Expanded(
                              child: Image.network("${bag[index]["pic"]}")),
                          Text(
                            "${bag[index]["name"]}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$${bag[index]["price"]}",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.orange),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
/*
        GridView(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          shrinkWrap: true,
          children: List.generate(
              6,
                  (index) => Card(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsPage(),
                    ));
                  },
                  child: Column(
                    children: [
                      Expanded(child: Image.network("${bag[index]["pic"]}")),
                      Text(
                        "${bag[index]["name"]}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Text(
                            "\$${bag[index]["price"]}",
                            style:
                            TextStyle(fontSize: 16, color: Colors.orange),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ),
           )
              */
