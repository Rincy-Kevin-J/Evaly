import 'package:flutter/cupertino.dart';
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
        title:  RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 40, color: Colors.black),
            children: [
              TextSpan(
                text: 'e',
                style: TextStyle(color: Colors.red),
              ),
              TextSpan(
                text: 'valy',
              ),
            ],
          )),

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
            height: 550,
            width: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        "https://tse4.mm.bing.net/th?id=OIP.yeXvdmqxDoVjdmdhSfqPDwHaHa&pid=Api&P=0&h=180"))),
          ),
          Card(
            child: Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SKU",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    "0x4c86a",
                    style: TextStyle(fontSize: 25, color: Colors.red),
                  ),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              ),
            ),
          ),
          Card(
            child: Container(height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    "\$2890.0",
                    style: TextStyle(fontSize: 25, color: Colors.orange),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Text(
                "Description",textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Card(
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    CupertinoIcons.heart,
                    weight: 20,
                  ),
                  MaterialButton(
                    color: Colors.pinkAccent[100],
                    onPressed: () {},
                    child: Text(
                      "ADD TO CART",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  MaterialButton(onPressed: () {

                  },color: Colors.red,
                  child: Text("AVAILABLE AT SHOPS",style:TextStyle(fontSize: 20,color: Colors.white),),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
