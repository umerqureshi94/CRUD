import 'package:flutter/material.dart';
import 'package:project/utilities/text_constants.dart';

import '../utilities/text_constants.dart';
import '../utilities/text_constants.dart';

class CrudOperations extends StatefulWidget {
  const CrudOperations({super.key});

  @override
  State<CrudOperations> createState() => _CrudOperationsState();
}

class _CrudOperationsState extends State<CrudOperations> {
  TextEditingController contactName = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController number = TextEditingController();
  addNewContact(context) {
    setState(() {
      Navigator.pop(context);
      TextConstants.contacts.add({
        "name": contactName.text,
        "userName": userName.text,
        "number": number.text,
      });
      contactName.clear();
    });
  }

  editContact(context, index) {
    setState(() {
      Navigator.pop(context);
      TextConstants.contacts[index] = {
        "name": contactName.text,
        "userName": userName.text,
        "number": number.text,
      };
      contactName.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: TextConstants.contacts.length,
        itemBuilder: (context, i) {
          return ListTile(
              title: Text("${TextConstants.contacts[i]['name']}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      contactName.text = TextConstants.contacts[i]['name'];
                      showDialog(
                        // barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text("My title"),
                            content: TextField(
                              controller: contactName,
                              obscureText: false,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Contact Edit',
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            // barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("My title"),
                content: TextField(
                  controller: contactName,
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contact Name',
                  ),
                ),
                actions: [
                  TextButton(
                    child: const Text("OK"),
                    onPressed: () {
                      addNewContact(context);
                    },
                  )
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
