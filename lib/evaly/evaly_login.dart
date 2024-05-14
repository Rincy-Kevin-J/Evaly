import 'package:evaly/evaly/bottomnavigation.dart';
import 'package:evaly/evaly/evaly_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginsign extends StatefulWidget {
  @override
  State<Loginsign> createState() => _LoginsignState();
}

class _LoginsignState extends State<Loginsign> {
  String username = "admin@";

  String password = "abc123";

  var usercontroller = TextEditingController();

  var pwdcontroller = TextEditingController();

  var pwd_visibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
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
              TextFormField(
                controller: usercontroller,
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@")) {
                    return "email must be valid";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    border: OutlineInputBorder(),
                    labelText: "Email"),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: pwdcontroller,
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return "password is empty/check the length";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (pwd_visibility == true) {
                            pwd_visibility = false;
                          } else {
                            pwd_visibility = true;
                          }
                        });
                      },
                      icon: Icon(pwd_visibility == true
                          ? Icons.visibility_off
                          : Icons.visibility)),
                  border: const OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                onPressed: () {
                  if (username == usercontroller.text &&
                      password == pwdcontroller.text) {
                    // successSnackbar(context);
                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text("sucess")));

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  } else {
                    // errorSnackbar(context);

                    ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(content: Text("error")));
                  }
                  usercontroller.clear();
                  pwdcontroller.clear();
                },
                color: Colors.yellow,
                minWidth: 400,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              RichText(
                text: const TextSpan(
                  text: "or create a new account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                      fontSize: 17),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bottom()));
                },
                color: Colors.red,
                minWidth: 400,
                height: 50,
                shape: const StadiumBorder(),
                child: const Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Login with",
                style: TextStyle(fontSize: 18, color: Colors.blueGrey),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.xYm-VIDJ4RDBprBbydEDZAHaHa&pid=Api&P=0&h=180"),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://tse1.mm.bing.net/th?id=OIP.K61w8tCEKaKN--vUwjeSSwHaHa&pid=Api&P=0&h=180"),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://tse3.mm.bing.net/th?id=OIP.s5ujrdq0imWUFoiH0lWbNwHaHa&pid=Api&P=0&h=180"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
