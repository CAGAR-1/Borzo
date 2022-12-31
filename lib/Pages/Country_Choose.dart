import 'package:borzo/Pages/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Country_Choose extends StatefulWidget {
  const Country_Choose({super.key});

  @override
  State<Country_Choose> createState() => _Country_ChooseState();
}

class _Country_ChooseState extends State<Country_Choose> {
  List images = [
    'images/india-flag.jpg',
    'images/vietnam.jpg',
    'images/nepal.jpg',
    'images/bangladesh.png',
    'images/philip.jpg',
    'images/mexico.jpg'
  ];
  List CountryName = [
    'India',
    'veitnam',
    'nepal',
    'bangladesh',
    'philipness',
    'Mexico'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            size: 30,
          ),
        ),
        title: Center(
          child: Text(
            "Choose your Country",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        // height: 250,
        child: ListView.builder(
            itemCount: images.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        print(images[index]);
                        print(CountryName[index]);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    WelcomePage(names: CountryName[index])));
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    images[index],
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            CountryName[index],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              );
            })),
      ),
    );
  }
}
