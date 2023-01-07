// ignore: duplicate_ignore

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:project/screens/android-2.dart';

// ignore: camel_case_types
class Contact_Page_1 extends StatefulWidget {
  const Contact_Page_1({super.key});

  @override
  State<Contact_Page_1> createState() => _Contact_Page_1State();
}

class _Contact_Page_1State extends State<Contact_Page_1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: const Text('Contacts'),
            actions: [
              IconButton(
                // ignore: prefer_const_constructors
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                // ignore: prefer_const_constructors
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {},
              )
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Image(image: AssetImage('lib/assets/box_image.png')),
              const Align(
                alignment: Alignment.center,
              ),
              const Text('You have no contacts yet'),
            ],
          ),
          floatingActionButton: Builder(
            builder: (BuildContext context) {
              return FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contact_Page_2()),
                  );
                },
                child: Icon(Icons.add),
              );
            },
          ),
        ));
  }
}
