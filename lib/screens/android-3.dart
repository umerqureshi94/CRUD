import 'package:flutter/material.dart';
import 'package:project/utilities/color_constants.dart';
import 'package:project/utilities/text_constants.dart';

import 'android-2.dart';

class contact_page_3 extends StatefulWidget {
  const contact_page_3({super.key});

  @override
  State<contact_page_3> createState() => _contact_page_3State();
}

class _contact_page_3State extends State<contact_page_3> {
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

  editContact(context, index) {
    setState(() {
      Navigator.pop(context);
      TextConstants.contacts[index] = {
        "name": TextConstants.Name.text,
        "userName": TextConstants.surname.text,
        "number": TextConstants.number.text,
      };
      TextConstants.Name.clear();
    });
    // ignore: avoid_print
    print(TextConstants.contacts);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color_constants.white,
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
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: TextConstants.contacts.length,
        itemBuilder: (context, i) {
          return ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.blueAccent,
                size: 40.0,
              ),
              title: Text("${TextConstants.contacts[i]['name']}"),
              subtitle: Text("${TextConstants.contacts[i]['number']}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      TextConstants.Name.text =
                          TextConstants.contacts[i]['name'];

                      showDialog(
                        // barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(TextConstants.edit_title),
                            content: TextField(
                              controller: TextConstants.Name,
                              obscureText: false,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Edit Contact',
                              ),
                            ),
                            actions: [
                              TextButton(
                                child: const Text("OK"),
                                onPressed: () {
                                  editContact(context, i);
                                },
                              )
                            ],
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        TextConstants.contacts.removeAt(i);
                      });
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ],
              ));
        },
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
    );
  }
}
