import 'package:delivery_food/pages/login.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';

class registerPass extends StatelessWidget {
  const registerPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 255, 252),
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 30, horizontal: 2)),
          Container(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Crie sua Senha',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromRGBO(24, 54, 105, 1)),
            ),
            alignment: Alignment.centerLeft,
          ),
          Container(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Sua senha deve ter no mínimo 8 caracteres',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color.fromRGBO(24, 54, 105, 0.5)),
            ),
            alignment: Alignment.centerLeft,
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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(),
                labelText: 'Confirme sua senha',
              ),
            ),
          ),
          Container(
            child: ClipRRect(
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
                      minimumSize: Size(346, 56),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Login()),
                      );
                    },
                    child: const Text('Enviar'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

