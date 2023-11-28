import 'package:flutter/material.dart';
import 'package:scd/menu.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  TextEditingController number = TextEditingController();
  String? newText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Menu()));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Text('Guessing Game'),
              TextField(
                controller: number,
                decoration: InputDecoration(hintText: 'Enter number'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                            'Entered text is: ${number.text.toString()}')));
                  },
                  child: Text('show'))
            ],
          ),
        ),
      ),
    );
  }
}
