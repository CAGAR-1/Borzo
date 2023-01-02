import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DeliverNow extends StatefulWidget {
  const DeliverNow({super.key});

  @override
  State<DeliverNow> createState() => _DeliverNowState();
}

class _DeliverNowState extends State<DeliverNow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 30,
                ),
              )
            ],
          ),
          Icon(
            Icons.timer,
            size: 30,
            color: Colors.blue,
          ),
          Text(
            "Deliver Now",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "We will assign the nearest courier to pick-up\nand deliver as soon as possible",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "From RS 45",
            style: TextStyle(fontSize: 20),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(0.1),
                  child: Icon(
                    Icons.run_circle_outlined,
                    size: 18,
                    color: Colors.blue,
                  ),
                )),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(0.1),
                  child: Icon(
                    Icons.cyclone,
                    size: 18,
                    color: Colors.blue,
                  ),
                )),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
          Text(
            "Delivery by 2-wheelers or public transport",
            style: TextStyle(fontSize: 15),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(0.1),
              child: Icon(
                Icons.cyclone,
                size: 18,
                color: Colors.grey,
              ),
            )),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)),
          ),
          Text(
            "Up to 20 Kg",
            style: TextStyle(),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(0.1),
              child: Icon(
                Icons.health_and_safety,
                size: 18,
                color: Colors.grey,
              ),
            )),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20)),
          ),
          Text("You can choose insurance amount"),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Expanded(
              child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Padding(
                padding: EdgeInsets.only(bottom: 50.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Container(
                        child: Center(
                            child: Text(
                          "Confirm",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    )),
                  ],
                )),
          )),
        ],
      ),
    );
  }
}
