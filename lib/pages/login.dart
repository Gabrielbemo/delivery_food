import 'package:delivery_food/pages/register.dart';
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
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 80),
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
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 80),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(),
                labelText: 'Senha',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(24, 54, 105, 1)),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    minimumSize: Size(232, 56),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(24, 54, 105, 1)),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    minimumSize: Size(232, 56),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Register()),
                    );
                  },
                  child: const Text('Cadastrar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
