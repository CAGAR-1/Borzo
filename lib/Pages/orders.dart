import 'package:borzo/Pages/CreateAccount.dart';
import 'package:borzo/Pages/Login.dart';
import 'package:borzo/Pages/Neworders.dart';
import 'package:flutter/material.dart';

class orders extends StatelessWidget {
  const orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 140,
          ),
          Center(
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                child: Image(image: AssetImage('images/logo.png')),
                decoration: BoxDecoration(
                    // color: Colors.yellow,
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          Image(image: AssetImage("images/package.png")),
          // Text(
          //   "Send a package",
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          // ),
          Text(
            "A Courier will pick up and",
            style:
                TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 15),
          ),
          Text("deliver documents gifts",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5), fontSize: 15)),
          Text("flower food and other items",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5), fontSize: 15)),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 49,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(70),
            ),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewOrders()),
                  );
                },
                child: Text(
                  "Create Order",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: Text(
                  "Log in",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text("Or"),
              SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateAccount()),
                  );
                }),
                child: Text(
                  "Signup",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
