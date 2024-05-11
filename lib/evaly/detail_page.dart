import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

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
      body: Column(
        children: [
          Container(
            height: 350,
            width: 400,
            decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.contain,
                    image: NetworkImage(
                        "https://tse4.mm.bing.net/th?id=OIP.yeXvdmqxDoVjdmdhSfqPDwHaHa&pid=Api&P=0&h=180"))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[

            ],
          )
        ],
      ),
    );
  }
}
