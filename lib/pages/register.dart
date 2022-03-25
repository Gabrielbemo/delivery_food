import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 255, 252),
      body: Column(
        children: [
          Image(
            image: NetworkImage(
                'https://cdn.discordapp.com/attachments/956310286866972794/956722285975306260/Blue_Restaurant_Logo__1_-removebg-preview.png'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
            child: const TextField(
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 211, 6, 6),
                isDense: true,
                border: OutlineInputBorder(),
                labelText: 'Usuario',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(),
                labelText: 'Senha',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
