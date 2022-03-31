import 'package:delivery_food/models/Food.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';

class DetalheComida extends StatelessWidget {
  const DetalheComida({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final food = ModalRoute.of(context)!.settings.arguments as Food;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 255, 252),
      appBar: AppBar(actions: []),
      body: Column(
        children: [
          Text(" aaaaaaaaa" + food.id.toString() )
        ],
      ),
    );
  }
}
