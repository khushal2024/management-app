import 'package:flutter/material.dart';
import 'package:scd/application.dart';
import 'package:intl/intl.dart';
import 'package:scd/loginPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dateTime = DateFormat("yyyy-MM-dd").format(DateTime.now());
  String currentTime = DateFormat('hh:mm a').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text('Current Time: ${currentTime}'),
          Text('Current Date: ${dateTime} '),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Application()));
                  },
                  child: Container(
                    width: 110,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.cyan),
                    child: Center(
                        child: Icon(
                      Icons.bolt_rounded,
                      size: 50,
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Container(
                    width: 110,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.cyan),
                    child: Center(
                        child: Icon(
                      Icons.settings_power_sharp,
                      size: 50,
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
