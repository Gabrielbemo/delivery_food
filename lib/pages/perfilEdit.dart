import 'dart:ui';

import 'package:delivery_food/pages/login.dart';
import 'package:delivery_food/pages/perfil.dart';
import 'package:delivery_food/pages/register.dart';
import 'package:delivery_food/pages/menu.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';

class PerfilEdit extends StatelessWidget {
  const PerfilEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 255, 252),
      body: Column(
        children: [
          Container(
            height: 60.0,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(24, 54, 105, 1),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, -0.99),
            child: Image.network(
              'https://cdn.discordapp.com/attachments/956310286866972794/956722285975306260/Blue_Restaurant_Logo__1_-removebg-preview.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              height: 60.0,
              color: Colors.transparent,
              child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(24, 54, 105, 1),
                  ),
                  child: new Center(
                      child: new Text(
                    "Editar perfil",
                    style: TextStyle(
                        color: Color.fromARGB(255, 233, 255, 252),
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  )))),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 80),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 211, 6, 6),
                isDense: true,
                border: OutlineInputBorder(),
                labelText: 'Nome',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 80),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 80),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(),
                labelText: 'Telefone',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
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
                    primary: Color.fromARGB(255, 233, 255, 252),
                    minimumSize: const Size(232, 56),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Perfil()),
                    );
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(195, 48, 48, 1)),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Color.fromARGB(255, 233, 255, 252),
                    minimumSize: const Size(232, 56),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: const Text('Deletar conta'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
