import 'package:borzo/user.dart';
import 'package:flutter/material.dart';

typedef OnDelete();

class UserForm extends StatefulWidget {
  final DeliveryPoint user;
  final state = _UserFormState();
  final OnDelete onDelete;

  UserForm({required Key? key, required this.user, required this.onDelete})
      : super(key: key);
  @override
  _UserFormState createState() => state;

  bool isValid() => state.validate();
}

class _UserFormState extends State<UserForm> {
  final form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Row(
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextFormField(
              decoration: InputDecoration(
                  label: Text("Address"), suffixIcon: Icon(Icons.add_location)),
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
                  label: Text("Phone Number"), suffixIcon: Icon(Icons.person)),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.nordic_walking),
                          Text(
                            "Instruction for the courier",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [Icon(Icons.keyboard_arrow_down)],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      "The courier will buy out the goods or carry out other instructions",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)))
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
                        fontSize: 20, color: Colors.black.withOpacity(0.5))),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Remove address",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                )
              ],
            ),
            SizedBox(
              height: 200,
            )
          ]),
        ),
      ],
    );

    // Padding(
    //   padding: EdgeInsets.all(16),
    //   child: Material(
    //     elevation: 1,
    //     clipBehavior: Clip.antiAlias,
    //     borderRadius: BorderRadius.circular(8),
    //     child: Form(
    //       key: form,
    //       child: Column(
    //         mainAxisSize: MainAxisSize.min,
    //         children: <Widget>[
    //           AppBar(
    //             leading: Icon(Icons.verified_user),
    //             elevation: 0,
    //             title: Text('User Details'),
    //             backgroundColor: Theme.of(context).accentColor,
    //             centerTitle: true,
    //             actions: <Widget>[
    //               IconButton(
    //                 icon: Icon(Icons.delete),
    //                 onPressed: widget.onDelete,
    //               )
    //             ],
    //           ),
    //           Padding(
    //             padding: EdgeInsets.only(left: 16, right: 16, top: 16),
    //             child: TextFormField(
    //               initialValue: widget.user.fullName,
    //               onSaved: (val) => widget.user.fullName = val!,
    //               validator: (val) =>
    //                   val!.length > 3 ? null : 'Full name is invalid',
    //               decoration: InputDecoration(
    //                 labelText: 'Full Name',
    //                 hintText: 'Enter your full name',
    //                 icon: Icon(Icons.person),
    //                 isDense: true,
    //               ),
    //             ),
    //           ),
    //           Padding(
    //             padding: EdgeInsets.only(left: 16, right: 16, bottom: 24),
    //             child: TextFormField(
    //               initialValue: widget.user.email,
    //               onSaved: (val) => widget.user.email = val!,
    //               validator: (val) =>
    //                   val!.contains('@') ? null : 'Email is invalid',
    //               decoration: InputDecoration(
    //                 labelText: 'Email Address',
    //                 hintText: 'Enter your email',
    //                 icon: Icon(Icons.email),
    //                 isDense: true,
    //               ),
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

  ///form validator
  bool validate() {
    var valid = form.currentState!.validate();
    if (valid) form.currentState!.save();
    return valid;
  }
}
