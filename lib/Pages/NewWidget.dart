import 'package:borzo/map.dart';
import 'package:borzo/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewDeliv extends StatefulWidget {
  int index;
  NewDeliv({super.key, required this.index});

  @override
  State<NewDeliv> createState() => _NewDelivState();
}

class _NewDelivState extends State<NewDeliv> {
  TextEditingController addes = TextEditingController();
  TextEditingController PickUpAddress = TextEditingController();

  // List NewValue = [];

  bool is_visible = true;

  bool isChecked = false;

  // bool showtext = true;
  bool selected = true;

  bool AddtionalService = false;

  // weightValue(updateweight) {
  //   setState(() {
  //     Kg = updateweight;
  //   });
  // }

  bool pressed = true;
  // Color press_color = Colors.pink;

  // changeColor(inde) {
  //   setState(() {
  //     press_color = inde;
  //   });
  // }

  // updatePayment(val) {
  //   setState(() {
  //     PaymentMethod = val;
  //   });
  // }

 

  int index = 1;
  int? currentIndex;
  int currentpage = 0;



  removeDeliveryPoint() {
    if (index >= 2) {
      setState(() {
        index = index - 1;
        currentIndex = index;
      });
    }
  }

  bool changingName = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12,
                child: Text((widget.index + 2).toString()),
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
                          InkWell(
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
                      SizedBox(
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                controller: PickUpAddress,
                                label: 'Phone Number',
                              ),
                            ),
                            InkWell(
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
                                                      // Expanded(
                                                      //     child: Container(
                                                      //   height: 100,
                                                      //   color: Colors.white,
                                                      // )),
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
                                                        child: Container(
                                                          child: Center(
                                                            child: Text(
                                                              "Confirm",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 20),
                                                            ),
                                                          ),
                                                          height: 50,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.blue,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30)),
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
                            onPressed: () {
                              setState(() {
                                selected = !selected;
                                AddtionalService = !AddtionalService;
                              });
                            },
                          ),
                        ],
                      ),
                      Visibility(
                        visible: AddtionalService,
                        child: Column(
                          children: [
                            CustomTextField(label: "ads"),
                            CustomTextField(label: "adsf"),
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
                          InkWell(
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
                              // color: blueColor.withOpacity(0.15)
                              color: Colors.blue.withOpacity(0.5)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timer,
                                // color: blueColor,
                                color: Colors.blue,
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
                      SizedBox(
                        // height: 50,
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                controller: PickUpAddress,
                                label: 'Phone Number',
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  print('adsf');
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => BrozoMap(
                                  //             controller: PickUpAddress,
                                  //           )

                                  //           ),
                                  // );
                                },
                                child: Icon(Icons.phone))
                          ],
                        ),
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
                            'Addtional services',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                          // IconButton(
                          //   color: Colors.grey,
                          //   icon: Icon(selected
                          //       ? Icons.expand_more
                          //       : Icons.expand_less),
                          //   onPressed: () {
                          //     setState(() {
                          //       selected = !selected;
                          //       AddtionalService = !AddtionalService;
                          //     });
                          //   },
                          // ),
                        ],
                      ),
                      // Visibility(
                      //   visible: AddtionalService,
                      //   child: Column(
                      //     children: [
                      //       CustomTextField(label: "ads"),
                      //       CustomTextField(label: "adsf"),
                      //     ],
                      //   ),
                      // ),
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