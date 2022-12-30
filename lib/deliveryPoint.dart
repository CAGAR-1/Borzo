// import 'package:borzo/widgets/textfield.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class DeliveryPoint extends StatefulWidget {
//   const DeliveryPoint({super.key});

//   @override
//   State<DeliveryPoint> createState() => _DeliveryPointState();
// }

// class _DeliveryPointState extends State<DeliveryPoint> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             CircleAvatar(
//               backgroundColor: Colors.black,
//               maxRadius: 22,
//               child: Text(
//                 "2",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//               ),
//             ),
//             SizedBox(
//               width: 20,
//             ),
//             Expanded(
//                 child: Text(
//               "Delivery Point",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             )),
//           ],
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Container(
//                 height: 330,
//                 width: 3,
//                 color: Colors.black,
//               ),
//             ),
//             Expanded(
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     CustomTextField(
//                       sicon: Icon(Icons.add_location),
//                       label: 'Address',
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       child: Row(
//                         children: [
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Row(
//                                   children: [
//                                     Icon(
//                                       Icons.timer,
//                                       color: Colors.blue,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Text(
//                                     "Enter the address to find out",
//                                     style: TextStyle(fontSize: 18),
//                                   ),
//                                   Text(
//                                     "When the courier will arrive",
//                                     style: TextStyle(fontSize: 18),
//                                   )
//                                 ],
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                       width: MediaQuery.of(context).size.width * 0.8,
//                       height: MediaQuery.of(context).size.height * 0.08,
//                       decoration: BoxDecoration(
//                           color: Colors.blue.withOpacity(0.3),
//                           borderRadius: BorderRadius.circular(12)),
//                     ),
//                     CustomTextField(
//                       sicon: Icon(Icons.person),
//                       label: 'Phone Number',
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       child: Column(
//                         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(Icons.nordic_walking),
//                                   Text(
//                                     "Instruction for the courier",
//                                     style: TextStyle(fontSize: 18),
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 children: [Icon(Icons.keyboard_arrow_down)],
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Text(
//                               "The courier will buy out the goods or carry out other instructions",
//                               style: TextStyle(
//                                   color: Colors.black.withOpacity(0.5)))
//                         ],
//                       ),
//                       height: MediaQuery.of(context).size.height * 0.08,
//                       decoration: BoxDecoration(
//                           color: Colors.white.withOpacity(0.3),
//                           borderRadius: BorderRadius.circular(12)),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       children: [
//                         Text("Additional Services ",
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.black.withOpacity(0.5))),
//                         Icon(Icons.keyboard_arrow_down)
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Text(
//                           "Remove address",
//                           style: TextStyle(fontSize: 20, color: Colors.blue),
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 200,
//                     )
//                   ]),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
