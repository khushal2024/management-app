import 'package:flutter/material.dart';
import 'package:scd/menu.dart';

class PhoneBook extends StatefulWidget {
  const PhoneBook({super.key});

  @override
  State<PhoneBook> createState() => _PhoneBookState();
}

class _PhoneBookState extends State<PhoneBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Phone Numbers'),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Menu()));
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return ListTile(
              title: Text('03331122934'),
            );
          }),
          itemCount: 10,
        ));
  }
}
