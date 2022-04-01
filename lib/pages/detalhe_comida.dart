import 'package:delivery_food/models/Food.dart';
import 'package:delivery_food/pages/menu.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';

class DetalheComida extends StatelessWidget {
  const DetalheComida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final food = ModalRoute.of(context)!.settings.arguments as Food;
    final maxLines = 5;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 255, 252),
      appBar:
          AppBar(actions: [], backgroundColor: Color.fromRGBO(24, 54, 105, 1)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Image.asset('assets/images/${food.id}.png')),
            Container(
                height: 50,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            color: Color.fromARGB(255, 142, 204, 255),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 17, horizontal: 30),
                                  child: Text(" - ${food.igredients}"),
                                )
                              ],
                            ))),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Container(
                margin: EdgeInsets.all(12),
                height: maxLines * 24.0,
                child: TextField(
                  maxLines: maxLines,
                  decoration: InputDecoration(
                    hintText: "Observação",
                    fillColor: Color.fromARGB(255, 212, 236, 243),
                    filled: true,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
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
                      minimumSize: const Size(232, 56),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Menu()),
                      );
                    },
                    child: const Text('Adicionar'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
