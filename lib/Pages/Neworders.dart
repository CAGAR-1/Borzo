import 'package:borzo/Pages/NewWidget.dart';

import 'package:borzo/widgets/constant.dart';

import 'package:borzo/Swap/DeliverNow.dart';
import 'package:borzo/Swap/Schedule.dart';

import 'package:borzo/mainscreen.dart';
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

  List<NewDeliv> newdeliv = [];

  @override
  void initState() {
    addnewDelvPoints(0);

    // TODO: implement initState
    super.initState();
  }

  bool isChecked = false;

  void addnewDelvPoints(int index) {
    newdeliv.add(NewDeliv(
      index: index,
      removing: removeCurrentDeliveryPoint,
      lastIndex: [newdeliv.toString()],
    ));

    setState(() {});
  }

  removeCurrentDeliveryPoint(int index) {
    if ((newdeliv.length > 1)) {
      setState(() {
        newdeliv.removeAt(index);
        for (var i = 0; i < newdeliv.length; i++) {
          newdeliv[i] = NewDeliv(
            index: i,
            removing: newdeliv[i].removing,
            lastIndex: [newdeliv.toString()],
          );
        }
      });
    }
  }

  removingthevalue() {
    setState(() {});
    newdeliv.removeAt(index);
  }

  bool is_visible = true;

  bool showtext = true;
  bool selected = true;

  bool AddtionalService = false;

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

  List packge = ['Documents', 'Food', 'Cloth', 'Groceries', 'Flowers', 'Cake'];
  List weight = [
    'Up to 1 Kg',
    'Up to 5 Kg',
    'Up to 10 Kg',
    'Up to 15 Kg',
    'Up to 20 Kg'
  ];

  bool changingName = true;

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
          GestureDetector(
            onTap: (() {
              removeCurrentDeliveryPoint(index);
            }),
            child: GestureDetector(
              onTap: (() {
                newdeliv.clear();
                Get.snackbar("", "Delivery point reset Successfully");
                setState(() {
                  addnewDelvPoints(0);
                });
              }),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Clear",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
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
                  GestureDetector(
                    onTap: () {
                      print("clicked");
                      setState(() {
                        is_visible = true;
                        showtext = true;
                        pressed = true;
                        changingName = !changingName;
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
                            Icon(Icons.timer,
                                size: 30,
                                color: pressed ? bluecolor : Colors.grey),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Deliver Now",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "From Rs 47",
                                  style: TextStyle(
                                      fontSize: 15,
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
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.2))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Second one is clcked");
                      setState(() {
                        is_visible = false;

                        showtext = false;
                        pressed = false;
                      });
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.calendar_month,
                                size: 30,
                                color: pressed ? Colors.grey : bluecolor),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Schedule",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "From Rs 47",
                                  style: TextStyle(
                                      fontSize: 15,
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
                          color: pressed ? Colors.white : Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
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
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),
              Visibility(
                visible: !showtext,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "We will  arrive at each address at specified times",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
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
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [],
                        )
                      ],
                    ),
                    height: 55,
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
                            child: GestureDetector(
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
                                                                GestureDetector(
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
                                                                                  style: TextStyle(color: Kg == weight[index] ? Colors.black : Colors.black),
                                                                                ),
                                                                              ]),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        Visibility(
                                                                          visible:
                                                                              true,
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              Icon(
                                                                                Icons.check,
                                                                                color: Kg == weight[index] ? bluecolor : Colors.white,
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 24,
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
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              SizedBox(
                height: 20,
              ),
              PickUpPoint(),
              SizedBox(
                height: 50,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: newdeliv.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            newdeliv[index],
                          ],
                        ));
                  })),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: () {
                    print("Clicke sucessfully");

                    addnewDelvPoints(newdeliv.length);
                  },
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
              ),
              CustomSwitch(
                texts: "Optimize the route",
              ),
              Text(
                "Our algorithm will optimize the route points ensuring the route is more convenient for the courier and cheaper",
                style: TextStyle(fontSize: 13, color: Colors.grey),
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
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: packge.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 4,
                          child: GestureDetector(
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
                height: 10,
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
              GestureDetector(
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

                                      updatePayment(Value);
                                      PaymentMethod = tick;
                                    });
                                  },
                                  activeColor: Colors.red,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  secondary: Icon(Icons.card_membership),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
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
                  GestureDetector(
                    onTap: (() {
                      print("Clicked");
                      BottomAppBar(
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.pink,
                        ),
                      );
                    }),
                    child: GestureDetector(
                      onTap: (() {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            context: context,
                            builder: (context) {
                              return Wrap(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 30, left: 5, right: 5, top: 10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Delivery Fee",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Rs 45',
                                              style: TextStyle(fontSize: 15),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            });
                      }),
                      child: Container(
                        height: 30,
                        width: 110,
                        child: Row(
                          children: [
                            Text(
                              "Rs",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "45",
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(Icons.keyboard_arrow_down)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  child: Center(
                      child: Text(
                    "Create Order",
                    style: TextStyle(fontSize: 20),
                  )),
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      color: bluecolor,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget PickUpPoint() {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12,
                child: Text(
                  "1",
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Pick Up point',
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
                VerticalDivider(
                  color: Colors.black,
                  width: 22,
                  indent: 20,
                  thickness: 2,
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              controller: PickUpAddress,
                              label: 'location',
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                print('adsf');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BrozoMap(
                                            controller: PickUpAddress,
                                          )),
                                );
                              },
                              child: Icon(Icons.location_on_outlined))
                        ],
                      ),
                      SizedBox(),
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
                              color: bluecolor.withOpacity(0.5)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                color: bluecolor,
                              ),
                              const Text(
                                'Enter the address to find out\nwhen the courier will arrive',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                label: 'Phone Number',
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  print('adsf');
                                },
                                child: Icon(Icons.phone))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                print("Clicked");
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      Color mainColor = Colors.red;
                                      bool ccolor = true;
                                      bool hideText = false;

                                      return StatefulBuilder(
                                        builder: (context, setState) {
                                          return Wrap(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 20,
                                                bottom: 10,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Instruction for the courier",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Checkbox(
                                                              activeColor:
                                                                  Colors.white,
                                                              checkColor:
                                                                  Colors.black,
                                                              value: isChecked,
                                                              onChanged:
                                                                  (value) {
                                                                setState(() {
                                                                  isChecked =
                                                                      value!;
                                                                  hideText =
                                                                      !hideText;

                                                                  ccolor =
                                                                      !ccolor;
                                                                });
                                                              },
                                                            ),
                                                            Text(
                                                              "Collect Cash on Delivery",
                                                              style: TextStyle(
                                                                  color: ccolor
                                                                      ? Colors
                                                                          .black
                                                                      : Colors
                                                                          .white),
                                                            ),
                                                          ],
                                                        ),
                                                        height: 40,
                                                        width: 200,
                                                        color: ccolor
                                                            ? Colors.grey[200]
                                                            : Colors.black,
                                                      ),
                                                      SizedBox(
                                                        width: 6,
                                                      ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            SizedBox(
                                                              height: 2,
                                                              child: InkWell(
                                                                onTap: () {},
                                                                child: Checkbox(
                                                                  value:
                                                                      !pressed,
                                                                  onChanged:
                                                                      (value) {
                                                                    setState(
                                                                        () {});
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              "Buy for me",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey),
                                                            )
                                                          ],
                                                        ),
                                                        height: 40,
                                                        width: 150,
                                                        color: Colors.grey[200],
                                                      ),
                                                    ],
                                                  ),
                                                  Visibility(
                                                    visible: hideText,
                                                    child: Column(
                                                      children: [
                                                        CustomTextField(
                                                            label: "Amount"),
                                                        CustomTextField(
                                                            label:
                                                                "Card or Wallet Number"),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    "Instruction for Courier",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  TextField(
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "For example call in 30 minutes",
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.07,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: InkWell(
                                                            onTap: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: Container(
                                                              child: Center(
                                                                child: Text(
                                                                  "Confirm",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          20),
                                                                ),
                                                              ),
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                  color:
                                                                      bluecolor,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30)),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]);
                                        },
                                      );
                                    });
                              },
                              child: Row(
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
                            ),
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
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: (() {
                          setState(() {
                            selected = !selected;
                            AddtionalService = !AddtionalService;
                          });
                        }),
                        child: Row(
                          children: [
                            const Text(
                              'Addtional services',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                            IconButton(
                              color: Colors.grey,
                              icon: Icon(selected
                                  ? Icons.expand_more
                                  : Icons.expand_less),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: AddtionalService,
                        child: Column(
                          children: [
                            CustomTextField(label: "Contact Person"),
                            CustomTextField(label: "Your Order Number"),
                          ],
                        ),
                      ),
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
