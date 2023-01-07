import 'package:flutter/cupertino.dart';

class TextConstants {
  static String contact = "Contacts";
  static String name = "Name";
  static String username = "username";
  static String phone = "Phone Number";
  static String add = "Add";
  static String title = "Add Contact";
  static String edit_title = "Edit Contact";

  static TextEditingController Name = TextEditingController();
  static TextEditingController surname = TextEditingController();
  static TextEditingController number = TextEditingController();

  static List contacts = [
    {
      "name": "Umer",
      "userName": "umerqureshi",
      "number": "0300-0000000",
    },
    {
      "name": "Naeem",
      "userName": "Naeem",
      "number": "0300-0000000",
    }
  ];
}
