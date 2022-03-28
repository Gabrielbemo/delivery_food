import 'package:delivery_food/pages/login.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
              'Seja Bem-Vindo!!',
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
              'Informe seus dados pessoais.',
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
              decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 211, 6, 6),
                isDense: true,
                border: OutlineInputBorder(),
                labelText: 'Nome',
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
                labelText: 'CPF',
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
                labelText: 'Email',
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
                labelText: 'Telefone',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
            child: Row(
              children: <Widget>[
                MyStatefulWidget(),
                Text(
                  'Li e concordo',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
            alignment: Alignment.centerLeft,
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

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Color.fromRGBO(24, 54, 105, 1);
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
