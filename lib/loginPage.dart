import 'package:flutter/material.dart';
import 'package:scd/homePage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController PassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.network(
                  'data:image/jpeg;base64,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'),
              SizedBox(
                height: 40,
              ),
              Text(
                'Login',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    label: Text('Enter email'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: PassController,
                decoration: InputDecoration(
                    label: Text('Enter Password'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0.0,
                      shape: StadiumBorder(
                        side: BorderSide(color: Colors.black, width: 2),
                      )),
                  onPressed: () {
                    if (emailController.text == 'a' &&
                        PassController.text == '1') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Wrong credentials')));
                    }
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
