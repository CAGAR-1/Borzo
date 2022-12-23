import 'package:borzo/constant.dart';

import 'package:borzo/Swap/DeliverNow.dart';
import 'package:borzo/Swap/Schedule.dart';
import 'package:borzo/map.dart';
import 'package:borzo/widgets/switch.dart';
import 'package:borzo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewOrders extends StatefulWidget {
  const NewOrders({Key? key}) : super(key: key);

  @override
  State<NewOrders> createState() => _NewOrdersState();
}

class _NewOrdersState extends State<NewOrders> {
  TextEditingController addes = TextEditingController();
  TextEditingController PickUpAddress = TextEditingController();
  bool is_visible = true;

  
  bool showtext = true;

  weightValue(updateweight) {
    setState(() {
      Kg = updateweight;
    });
  }

  bool pressed = true;
  Color press_color = Colors.pink;

  changeColor(inde) {
    setState(() {
      press_color = inde;
    });
  }

  updatePayment(val) {
    setState(() {
      PaymentMethod = val;
    });
  }

  String tick = "Cash";

  String PaymentMethod = "Cash";
  List payment = ['Cash', 'Bank card'];

  String Kg = 'Up to 1 Kg';

  int index = 1;
  int? currentIndex;
  int currentpage = 0;

  List packge = ['Documents', 'Food', 'Cloth', 'Groceries', 'Flowers', 'Cake'];
  List weight = [
    'Up to 1 Kg',
    'Up to 5 Kg',
    'Up to 10 Kg',
    'Up to 15 Kg',
    'Up to 20 Kg'
  ];

  addDeliveryPoint() {
    setState(() {
      index = index + 1;
      currentIndex = index;
    });
  }

  removeDeliveryPoint() {
    if (index >= 2) {
      setState(() {
        index = index - 1;
        currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: (() {
            Navigator.pop(context);
          }),
          child: Icon(
            Icons.clear,
            color: Colors.black,
          ),
        ),
        title: Text(
          "New Order",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Clear",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      print("Clicked");
                      setState(() {
                        is_visible = true;
                        showtext = true;
                        pressed = !pressed;
                      });
                    },
                    onDoubleTap: () {
                      print("Double Clicked");

                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => PageView(
                                children: [DeliverNow(), Schedule()],
                              ));
                    },
                    child: Container(
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
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
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
                          color: pressed ? Colors.grey[200] : Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Second one is clcked");
                      setState(() {
                        is_visible = false;
                        showtext = false;
                      });
                    },
                    child: Container(
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
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
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
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              Visibility(
                visible: showtext,
                child: Text(
                  "We will assign the nearest courier to pick-up and deliver as soon as possible",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              Visibility(
                visible: !showtext,
                child: Text(
                  "We will  arrive at each address at specified times",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),

              SizedBox(
                height: 20,
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
                                "Book a\nCourier",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 32,
                              color: Colors.black.withOpacity(0.5),
                            )
                          ],
                        )
                      ],
                    ),
                    height: 65,
                    width: MediaQuery.of(context).size.width * 0.44,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
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
                            child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(20))),
                                    builder: (context) => StatefulBuilder(
                                          builder:
                                              (BuildContext context, setState) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Parcel Weight",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Container(
                                                    height: 200,
                                                    // width: 500,
                                                    child: ListView.builder(
                                                        itemCount: 4,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemBuilder:
                                                            ((context, index) {
                                                          return Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(12.0),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                InkWell(
                                                                    onTap: () {
                                                                      setState(
                                                                          () {
                                                                        weightValue(
                                                                            weight[index]);
                                                                        Navigator.pop(
                                                                            context);
                                                                      });
                                                                    },
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            RichText(
                                                                              text: TextSpan(children: [
                                                                                TextSpan(
                                                                                  text: weight[index],
                                                                                  style: TextStyle(color: Kg == weight[index] ? Colors.blue : Colors.black),
                                                                                ),
                                                                                // WidgetSpan(child: Icon(Icons.app_blocking))
                                                                              ]),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        Visibility(
                                                                          visible:
                                                                              // showicon,
                                                                              true,
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              Icon(
                                                                                Icons.check,
                                                                                color: Kg == weight[index] ? Colors.blue : Colors.white,
                                                                              )
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ))
                                                              ],
                                                            ),
                                                          );
                                                        })),
                                                  )
                                                ],
                                              ),
                                            );
                                          },
                                          // child:
                                        ));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "$Kg",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
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
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.08))),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Huperlocal is km based tariff. it is the best option short distance deliveries under 5 km.",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    maxRadius: 13,
                    child: Text(
                      "1",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Text(
                    "Pick Up point",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Container(
                      height: 330,
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: PickUpAddress,
                            decoration: InputDecoration(
                                label: Text("Address"),
                                suffixIcon: InkWell(
                                    onTap: () {
                                      Get.to(
                                          BrozoMap(controller: PickUpAddress));
                                    },
                                    child: Icon(Icons.add_location))),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Visibility(
                            visible: is_visible,
                            child: Container(
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
                                            "Enter the address to find out\nWhen the courier will arrive",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: MediaQuery.of(context).size.height * 0.07,
                              decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                          CustomTextField(
                            sicon: Icon(Icons.person),
                            label: 'Phone Number',
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
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
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
                                  "The courier will buy out the goods or carry out other instructions",
                                  style: TextStyle(color: Colors.grey),
                                )
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
                                      fontSize: 20, color: Colors.grey)),
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
              // deliveryPoint(),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: index,
                  itemBuilder: ((context, index) {
                    return deliveryPoint();
                  })),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Icon(
                                Icons.add,
                                color: Colors.grey,
                                size: 40,
                              ),
                            ),
                            Text(
                              "Add Delivery Point",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.5)),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  ],
                ),
              ),
              CustomSwitch(
                texts: "Optimize the route",
              ),

              Text(
                "Our algorithm will optimize the route points ensuring the route is more convenient for the courier and cheaper",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey[300],
                thickness: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Package",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              CustomTextField(
                controller: addes,
                label: "What are you sending?",
              ),

              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                // width: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: packge.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // height: MediaQuery.of(context).size.height / 1,
                          width: MediaQuery.of(context).size.width / 4,
                          child: InkWell(
                              onTap: () {
                                print(packge[index]);
                                setState(() {
                                  addes.text = packge[index];
                                });
                              },
                              child: Center(child: Text(packge[index]))),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      );
                    }),
              ),
              CustomTextField(
                label: "Parcel Value(Amount, Rs)",
              ),
              SizedBox(height: 10),
              Text(
                "We will compensate the value of lost items within three working days according to the rules. Maximum compensation -30000",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextField(label: "Your Phone"),
              SizedBox(
                height: 20,
              ),

              Divider(
                color: Colors.grey[300],
                thickness: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Additional Services",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              CustomSwitch(texts: "Prefer Courier with Delivery bag"),
              SizedBox(
                height: 1,
              ),
              CustomSwitch(texts: "Notify recipients by SMS"),
              SizedBox(
                height: 10,
              ),

              Divider(
                color: Colors.grey[300],
                thickness: 20,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Payment",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: CustomTextField(
                    label: "Promo Code",
                  )),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: 100,
                    child: Center(
                        child: Text(
                      "Apply",
                      style: TextStyle(color: Colors.grey),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(80)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: ((context) {
                        return StatefulBuilder(
                          builder: (BuildContext context, setState) {
                            return Column(
                              children: [
                                Text(
                                  "Payment Methods",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                RadioListTile(
                                  value: "Cash",
                                  groupValue: tick,
                                  title: Text("Cash"),
                                  onChanged: (Value) {
                                    setState(() {
                                      tick = Value.toString();
                                      // Navigator.pop(context);
                                      updatePayment(Value);
                                      PaymentMethod = tick;
                                    });
                                  },
                                  activeColor: Colors.red,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  secondary: Icon(Icons.money),
                                ),
                                RadioListTile(
                                  value: "Bank Card",
                                  groupValue: tick,
                                  title: Text("Bank Card"),
                                  onChanged: (Value) {
                                    setState(() {
                                      tick = Value.toString();
                                      // Navigator.pop(context);
                                      updatePayment(Value);
                                      PaymentMethod = tick;
                                    });
                                  },
                                  activeColor: Colors.red,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  secondary: Icon(Icons.card_membership),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);

                                    // PaymentMethod = "okz";
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            child:
                                                Center(child: Text("Select")),
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                color: Colors.grey[400]),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                        );
                      }));
                },
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(80)),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.money),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  PaymentMethod,
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey,
                                  size: 29,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 110,
                    child: Row(
                      children: [
                        Text(
                          "RS",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "45",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  )
                ],
              ),
              Container(
                child: Center(
                    child: Text(
                  "Create Order",
                  style: TextStyle(fontSize: 20),
                )),
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    color: bluecolor, borderRadius: BorderRadius.circular(30)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget deliveryPoint() {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12,
                child: Text(
                  index == 1 ? '2' : currentIndex.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Delivery point',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 17),
              ),
            ],
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Column(
                  children: const [
                    // Container(
                    //   color: Colors.black,
                    //   width: 1,
                    //   height: 335,
                    // ),
                    SizedBox(
                      height: 350,
                      child: VerticalDivider(
                        color: Colors.black,
                        width: 25,
                        indent: 15,
                        thickness: 2.2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          child: CustomTextField(
                        label: 'asdf', sicon: Icon(Icons.phone),
                        // suffixIcon: Icons.person_outline_sharp,
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                      Visibility(
                        visible: is_visible,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: blueColor.withOpacity(0.15)
                              color: Colors.blue.withOpacity(0.5)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                // color: blueColor,
                                color: Colors.blue,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Enter the address to find out\nwhen the courier will arrive',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          // height: 50,
                          child: CustomTextField(
                        label: 'asdf', sicon: Icon(Icons.phone),
                        // suffixIcon: Icons.person_outline_sharp,
                      )),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.directions_run_rounded),
                                Text(
                                  'Instruction for the courier',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            // SizedBox(
                            //   width: MediaQuery.of(context).size.width / 3.99,
                            // ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.expand_more_outlined,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'The courier will buy out the goods, recieve cash\nor carry out the instruction.',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Text(
                            ' services',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                          IconButton(
                            onPressed: () {
                              print("Clicked");
                              addDeliveryPoint();
                            },
                            icon: const Icon(
                              Icons.expand_more,
                              color: Colors.grey,
                            ),
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          )
                        ],
                      ),
                      index >= 2
                          ? InkWell(
                              onTap: () {},
                              child: SizedBox(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                      onPressed: () {
                                        removeDeliveryPoint();
                                        print(currentIndex);
                                      },
                                      child: Text(
                                        'Remove address',
                                        style: TextStyle(
                                            // color: blueColor,
                                            color: Colors.blue,
                                            fontSize: 17),
                                      )),
                                ),
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//neito sans font

// import 'package:borzo/widgets/textfield.dart';
// // import 'package:deliveryapp/widgets/custom_toogleswitch.dart';
// import 'package:flutter/material.dart';

// // import '../constants.dart';
// // import 'widgets/package_container.dart';
// // import 'widgets/payment_container.dart';
// // import 'widgets/pickup_point_container.dart';

// class NewOrderFromButton extends StatefulWidget {
//   const NewOrderFromButton({super.key});

//   @override
//   State<NewOrderFromButton> createState() => _NewOrderFromButtonState();
// }

// class _NewOrderFromButtonState extends State<NewOrderFromButton> {
//   bool val1 = false;
//   bool val2 = false;
//   bool val3 = false;

//   int index = 1;
//   int? currentIndex;

//   onChangeFunction1(bool newValue1) {
//     setState(() {
//       val1 = newValue1;
//     });
//   }

//   onChangeFunction2(bool newValue2) {
//     setState(() {
//       val2 = newValue2;
//     });
//   }

//   onChangeFunction3(bool newValue3) {
//     setState(() {
//       val3 = newValue3;
//     });
//   }

//   addDeliveryPoint() {
//     setState(() {
//       index = index + 1;
//       currentIndex = index;
//     });
//   }

//   removeDeliveryPoint() {
//     if (index >= 2) {
//       setState(() {
//         index = index - 1;
//         currentIndex = index;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.grey[200],
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: const Icon(
//               Icons.close,
//               color: Colors.black,
//             ),
//           ),
//           title: const Text(
//             "New order",
//             style: TextStyle(color: Colors.black),
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {},
//               child: const Text(
//                 'Clear',
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 17,
//                     fontWeight: FontWeight.w400),
//               ),
//               style: TextButton.styleFrom(
//                 minimumSize: Size.zero,
//                 padding: const EdgeInsets.only(right: 10),
//                 tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//               ),
//             )
//           ],
//         ),
//         body: SingleChildScrollView(
//           physics: AlwaysScrollableScrollPhysics(),
//           child: Column(
//             children: [
//               Container(
//                 // margin: EdgeInsets.all(10),
//                 color: Colors.white,
//                 child: Padding(
//                   padding: const EdgeInsets.all(12),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Container(
//                               padding: EdgeInsets.all(12),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(12),
//                                   color: Colors.grey[200]),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Icon(
//                                     Icons.timer,
//                                     // color: blueColor,
//                                     color: Colors.blue,
//                                   ),
//                                   const SizedBox(
//                                     height: 5,
//                                   ),
//                                   const Text(
//                                     'Deliver Now',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 13),
//                                   ),
//                                   const SizedBox(
//                                     height: 5,
//                                   ),
//                                   Row(
//                                     children: [
//                                       const Text(
//                                         'from ₹ ',
//                                         style: TextStyle(
//                                             fontSize: 17,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                       const Text(
//                                         '45',
//                                         style: TextStyle(
//                                             fontSize: 17,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                       const SizedBox(
//                                         width: 3,
//                                       ),
//                                       InkWell(
//                                         onTap: () {},
//                                         child: const CircleAvatar(
//                                           radius: 7,
//                                           backgroundColor: Colors.white,
//                                           child: Icon(
//                                             Icons.keyboard_arrow_right_outlined,
//                                             size: 12,
//                                             color: Colors.grey,
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 5,
//                           ),
//                           Expanded(
//                             child: Container(
//                               alignment: Alignment.centerLeft,
//                               padding: EdgeInsets.all(12),
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(12),
//                                 color: Colors.white,
//                                 border: Border.all(
//                                     color: Colors.grey.shade300, width: 1.5),
//                               ),
//                               child: Column(
//                                 // mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   const Icon(
//                                     Icons.calendar_month,
//                                     color: Colors.grey,
//                                   ),
//                                   const SizedBox(
//                                     height: 5,
//                                   ),
//                                   const Text(
//                                     'Schedule',
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 13),
//                                   ),
//                                   const SizedBox(
//                                     height: 5,
//                                   ),
//                                   Row(
//                                     children: [
//                                       const Text(
//                                         'from ₹ ',
//                                         style: TextStyle(
//                                             fontSize: 17,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                       const Text(
//                                         '45',
//                                         style: TextStyle(
//                                             fontSize: 17,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                       const SizedBox(
//                                         width: 3,
//                                       ),
//                                       InkWell(
//                                         onTap: () {},
//                                         child: CircleAvatar(
//                                           radius: 7,
//                                           backgroundColor: Colors.grey.shade200,
//                                           child: const Icon(
//                                             Icons.keyboard_arrow_right_outlined,
//                                             size: 12,
//                                             color: Colors.grey,
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const Text(
//                         'We will assign the nearest courier to pick-up\nand deliver as soon as possible.',
//                         style: TextStyle(fontSize: 15, color: Colors.grey),
//                       ),
//                       // const Text(
//                       //   'and deliver as soon as possible.',
//                       //   style: TextStyle(fontSize: 15, color: Colors.grey),
//                       // ),
//                       const SizedBox(
//                         height: 15,
//                       ),
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Container(
//                               padding: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(12),
//                                   color: Colors.grey[200]),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   const Text(
//                                     'Book a\nCourier',
//                                     style: TextStyle(
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                   IconButton(
//                                     onPressed: () {},
//                                     icon: const Icon(
//                                       Icons.expand_more,
//                                       color: Colors.grey,
//                                     ),
//                                     style: TextButton.styleFrom(
//                                       minimumSize: Size.zero,
//                                       padding: EdgeInsets.zero,
//                                       tapTargetSize:
//                                           MaterialTapTargetSize.shrinkWrap,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 5,
//                           ),
//                           Expanded(
//                             child: Container(
//                               padding: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(12),
//                                   color: Colors.grey[200]),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceAround,
//                                 children: [
//                                   const Text(
//                                     'Up to 1 kg',
//                                     style: TextStyle(
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                   IconButton(
//                                     onPressed: () {},
//                                     icon: const Icon(
//                                       Icons.expand_more,
//                                       color: Colors.grey,
//                                     ),
//                                     style: TextButton.styleFrom(
//                                       minimumSize: Size.zero,
//                                       padding: EdgeInsets.zero,
//                                       tapTargetSize:
//                                           MaterialTapTargetSize.shrinkWrap,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const Text(
//                         'Hyperlocal is km based tariff. It is the best\nOption for short distance deliveries under 5 km.',
//                         style: TextStyle(fontSize: 15, color: Colors.grey),
//                       ),

//                       const SizedBox(
//                         height: 15,
//                       ),

//                       // PickupPointContainer(),
//                       ListView.builder(
//                           physics: NeverScrollableScrollPhysics(),
//                           shrinkWrap: true,
//                           itemCount: index,
//                           itemBuilder: ((context, index) {
//                             print("this is inside listview $index");
//                             return deliveryPoint();
//                           })),

//                       // const SizedBox(
//                       //   height: 15,
//                       // ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       InkWell(
//                         onTap: () {
//                           addDeliveryPoint();
//                           print(currentIndex);
//                         },
//                         child: Container(
//                           padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
//                           decoration: BoxDecoration(
//                             color: Colors.grey[200],
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.add,
//                                 size: 25,
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 'Add Delivery Point',
//                                 style: TextStyle(
//                                     fontSize: 17, fontWeight: FontWeight.w500),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),

//                       SizedBox(
//                         height: 10,
//                       ),
//                       // CustomToogle(
//                       //     text: 'Optimize the route',
//                       //     val: val1,
//                       //     onchangedMethod: onChangeFunction1)

//                       // ,
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               // PackageContainer(),
//               SizedBox(
//                 height: 20,
//               ),
//               Container(
//                 width: double.infinity,
//                 color: Colors.white,
//                 child: Padding(
//                   padding: const EdgeInsets.all(12),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Additional Services',
//                         style: TextStyle(
//                             fontWeight: FontWeight.w600,
//                             color: Colors.black,
//                             fontSize: 17),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       // CustomToogle(
//                       //     text: 'Prefer Courier with Delivery bag',
//                       //     val: val2,
//                       //     onchangedMethod: onChangeFunction2),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       SizedBox(
//                         child: Divider(
//                           color: Colors.grey,
//                           thickness: 1,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       // CustomToogle(
//                       //     text: 'Notify recipients by SMS',
//                       //     val: val3,
//                       //     onchangedMethod: onChangeFunction3),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               // PaymentContainer(),
//               SizedBox(
//                 height: 50,
//               )
//             ],
//           ),
//         ),
//         bottomNavigationBar: BottomAppBar(
//           elevation: 0,
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     const Text(
//                       '₹ ',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     const Text(
//                       '45',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     IconButton(
//                         onPressed: () {}, icon: const Icon(Icons.expand_more))
//                   ],
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Container(
//                     width: MediaQuery.of(context).size.width / 2.5,
//                     padding: const EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                         // color: blueColor,
//                         color: Colors.blue,
//                         borderRadius: BorderRadius.circular(25)),
//                     child: const Text(
//                       'Create order',
//                       style: TextStyle(fontSize: 16, color: Colors.white),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

// }