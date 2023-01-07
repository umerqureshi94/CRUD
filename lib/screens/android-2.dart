import 'package:flutter/material.dart';
import 'package:project/Views/android-2.dart';
import 'package:project/screens/android-3.dart';
import 'package:project/utilities/color_constants.dart';
import 'package:project/utilities/text_constants.dart';

class Contact_Page_2 extends StatefulWidget {
  const Contact_Page_2({super.key});

  @override
  State<Contact_Page_2> createState() => _Contact_Page_2State();
}

class _Contact_Page_2State extends State<Contact_Page_2> {
  addNewContact(context) {
    setState(() {
      Navigator.pop(context);
      TextConstants.contacts.add({
        "name": TextConstants.Name.text,
        "userName": TextConstants.surname.text,
        "number": TextConstants.number.text,
      });
      TextConstants.Name.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: color_constants.white,
          foregroundColor: Colors.black,
          title: const Text('Add'),
          actions: [
            IconButton(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.check,
                color: Colors.black,
              ),
              onPressed: () {
                addNewContact(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => contact_page_3()),
                );
              },
            ),
          ],
        ),
        body: Builder(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    controller: TextConstants.Name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Enter name',
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.name,
                    controller: TextConstants.surname,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Enter Surname',
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.all(8),
                  child: TextFormField(
                    autofocus: false,
                    keyboardType: TextInputType.phone,
                    controller: TextConstants.number,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Phone Number',
                      hintText: '+988 ----- ----',
                    ),
                  )),
            ],
          );
        }));
  }
}
