// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:uuid/uuid.dart';
// import 'package:http/http.dart' as http;





// class SearchPage extends StatefulWidget {
//   const SearchPage({super.key});

//   @override
//   State<SearchPage> createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {


//   TextEditingController _controller = TextEditingController();


//   var uuid = Uuid();
//   String _sessionToken = '12345';
//   List<dynamic> _placesList = [];

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

//     _controller.addListener(() {
//       onChange();
//     });
//   }

//   void onChange() {
//     if (_sessionToken == null) {
//       setState(() {
//         _sessionToken = uuid.v4();
//       });
//     }
//     getSugession(_controller.text);
//   }

//   void getSugession(String input) async {
//     String kPLACES_API_KEY = "AIzaSyDSt5nIu_AqnPTMALqnOzxOqMeY0BqZtXA";

//     String baseURL =
//         'https://maps.googleapis.com/maps/api/place/autocomplete/json';
//     String request =
//         '$baseURL?input=$input&key=$kPLACES_API_KEY&sessiontoken=$_sessionToken';

//     var response = await http.get(Uri.parse(request));
//     print(response.body.toString());
//     if (response.statusCode == 200) {
//       setState(() {
//         _placesList = jsonDecode(response.body.toString())['predictions'];
//       });
//     } else {
//       throw Exception("Fail to load data");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: TextFormField(
//           controller: _controller,
//           decoration: InputDecoration(hintText: "Search page"),
//         ),
//       ),
//     );
//   }
// }
