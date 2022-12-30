import 'package:flutter/material.dart';

class MenuCartWidget extends StatefulWidget {
  const MenuCartWidget({Key? key}) : super(key: key);

  @override
  _MenuCartWidgetState createState() => _MenuCartWidgetState();
}

class _MenuCartWidgetState extends State<MenuCartWidget> {


  List FITEMS = [];
  var itemCounted = 7;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < itemCounted; i++) {
      FITEMS.add(1);
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: FITEMS.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Column(
                    children: [
                      Text('test'),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                FITEMS[index]--;
                                setState(() {
                                  FITEMS;
                                });
                              },
                              child: Text('-')),
                          Text(FITEMS[index].toString()),
                          // TextButton(
                          //     onPressed: () {
                          //       FITEMS[index]++;

                          //       setState(() {
                          //         // FITEMS;
                          //       });
                          //     },
                          //     child: Text('+')),
                          InkWell(
                              onTap: () {
                                FITEMS[index]++;

                                setState(() {
                                  FITEMS;
                                });
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                color: Colors.pink,
                              ))
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}

