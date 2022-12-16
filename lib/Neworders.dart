import 'package:flutter/material.dart';

class NewOrders extends StatefulWidget {
  const NewOrders({Key? key}) : super(key: key);

  @override
  State<NewOrders> createState() => _NewOrdersState();
}

class _NewOrdersState extends State<NewOrders> {
  @override
  Widget build(BuildContext context) {
    int totalTextField = 1;
    return Scaffold(
      floatingActionButton: Container(
        height: 49,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(70),
        ),
        child: Center(
          child: Text(
            "Create Order",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.clear,
                        size: 35,
                      ),
                      SizedBox(
                        width: 29,
                      ),
                      Text(
                        "New Order",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Clear",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.timer,
                            size: 30,
                            color: Colors.blue,
                          ),
                          Text(
                            "Deliver Now",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "From Rs 47",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(0.1),
                                  child: Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 18,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                )),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    height: 110,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 30,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          Text(
                            "Schedule",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "From Rs 47",
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(0.1),
                                  child: Icon(
                                    Icons.keyboard_arrow_right,
                                    size: 18,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                )),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(20)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    height: 110,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.2))),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "We will assign the nearest courier to pick-up and deliver as soon as possible",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 15),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Book a",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(
                                "Courier",
                                style: TextStyle(fontSize: 20),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 39,
                              color: Colors.black.withOpacity(0.5),
                            )
                          ],
                        )
                      ],
                    ),
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.08))),
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Up to 1 kg",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black.withOpacity(0.5),
                              )
                            ],
                          )
                        ]),
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(30),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.08))),
                  ),
                ],
              ),
              Text(
                "Huperlocal is km based tariff. it is the best option short distance deliveries under 5 km.",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 22,
                    child: Text(
                      "1",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Text(
                    "Pick Up point",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 330,
                      width: 3,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                label: Text("Address"),
                                suffixIcon: Icon(Icons.add_location)),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.timer,
                                            color: Colors.blue,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Enter the address to find out",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          "When the courier will arrive",
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                label: Text("Phone Number"),
                                suffixIcon: Icon(Icons.person)),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.nordic_walking),
                                        Text(
                                          "Instruction for the courier",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.keyboard_arrow_down)
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                    "The courier will buy out the goods or carry out other instructions")
                              ],
                            ),
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text("Additional Services ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black.withOpacity(0.5))),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),

              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 22,
                    child: Text(
                      "2",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Text(
                    "Delivery Point",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 330,
                      width: 3,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                label: Text("Address"),
                                suffixIcon: Icon(Icons.add_location)),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.timer,
                                            color: Colors.blue,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Enter the address to find out",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          "When the courier will arrive",
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                label: Text("Phone Number"),
                                suffixIcon: Icon(Icons.person)),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.nordic_walking),
                                        Text(
                                          "Instruction for the courier",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.keyboard_arrow_down)
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                    "The courier will buy out the goods or carry out other instructions")
                              ],
                            ),
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text("Additional Services ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black.withOpacity(0.5))),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ]),
                  ),
                ],
              ),

              // Row(
              //   children: [
              //     CircleAvatar(
              //       backgroundColor: Colors.black,
              //       maxRadius: 22,
              //       child: Text(
              //         "1",
              //         style:
              //             TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text(
              //       "Pickup Point",
              // style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              //     )
              //   ],
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Row(
              //         children: [
              //           Container(
              //             height: 500,
              //             width: 3,
              //             color: Colors.black,
              //           ),
              //         ],
              //       ),
              //       SizedBox(
              //         width: 50,
              //       ),
              //       Expanded(
              // child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     TextFormField(
              //       decoration: InputDecoration(
              //           label: Text("Address"),
              //           suffixIcon: Icon(Icons.add_location)),
              //       textAlign: TextAlign.start,
              //     ),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Container(
              //               child: Row(
              //                 children: [
              //                   Row(
              //                     children: [
              //                       Padding(
              //                         padding: const EdgeInsets.all(8.0),
              //                         child: Row(
              //                           children: [
              //                             Icon(
              //                               Icons.timer,
              //                               color: Colors.blue,
              //                             )
              //                           ],
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                   Row(
              //                     children: [
              //                       Column(
              //                         mainAxisAlignment:
              //                             MainAxisAlignment.center,
              //                         children: [
              //                           Text(
              //                             "Enter the address to find out",
              //                             style: TextStyle(fontSize: 18),
              //                           ),
              //                           Text(
              //                             "When the courier will arrive",
              //                             style: TextStyle(fontSize: 18),
              //                           )
              //                         ],
              //                       )
              //                     ],
              //                   )
              //                 ],
              //               ),
              //               width: MediaQuery.of(context).size.width * 0.8,
              //               height: MediaQuery.of(context).size.height * 0.08,
              //               decoration: BoxDecoration(
              //                   color: Colors.blue.withOpacity(0.3),
              //                   borderRadius: BorderRadius.circular(12)),
              //             )
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );

    // Container(
    //   color: Colors.white,
    //   child: Center(
    //     child: Text(
    //       "NewOrders",
    //       style: TextStyle(
    //         color: Colors.black,
    //         fontSize: 45,
    //         fontWeight: FontWeight.w500,
    //       ),
    //     ),
    //   ),
    // );
  }
}



//neito sans font 