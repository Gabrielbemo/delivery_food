import 'dart:ui';
import 'package:delivery_food/pages/login.dart';
import 'package:delivery_food/pages/registerPass.dart';
import 'package:delivery_food/pages/perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import 'package:flutter/material.dart';

class faleConosco extends StatelessWidget {
  faleConosco({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 255, 252),
      body: Builder(
        builder: (context) => Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 0)),
            Container(
                height: 60.0,
                color: Colors.transparent,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(24, 54, 105, 1),
                  ),
                )),
            Container(
              child: const Center(
                child: Image(
                  image: NetworkImage(
                      'https://cdn.discordapp.com/attachments/956310286866972794/956722285975306260/Blue_Restaurant_Logo__1_-removebg-preview.png',
                      scale: 2),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            Container(
                height: 60.0,
                color: Colors.transparent,
                child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(24, 54, 105, 1),
                    ),
                    child: const Center(
                        child: Text(
                      "Fale Conosco",
                      style: TextStyle(
                          color: Color.fromARGB(255, 233, 255, 252),
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    )))),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              child: TextField(
                  maxLines: 8,
                  style: TextStyle(color: Color.fromRGBO(24, 54, 105, 1))),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
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
                      minimumSize: Size(346, 56),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Perfil()),
                      );
                    },
                    child: const Text('Enviar'),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => faleConosco()),
                    );
                  },
                ),
                label: 'Menu'),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.perm_identity_sharp),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Perfil()),
                    );
                  },
                ),
                label: 'Perfil'),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.date_range_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Perfil()),
                    );
                  },
                ),
                label: 'Pedidos'),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Perfil()),
                    );
                  },
                ),
                label: 'Carrinho'),
          ]),
    );
  }
}
