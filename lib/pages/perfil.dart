import 'package:delivery_food/pages/register.dart';
import 'package:delivery_food/pages/menu.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 255, 252),
      body: Column(
        children: [
          const Image(
            image: NetworkImage(
                'https://cdn.discordapp.com/attachments/956310286866972794/956722285975306260/Blue_Restaurant_Logo__1_-removebg-preview.png'),
          ),
        ],
      ),
    );
  }
}
