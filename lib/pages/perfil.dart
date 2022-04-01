import 'package:delivery_food/pages/cart.dart';
import 'package:delivery_food/pages/faleConosco.dart';
import 'package:delivery_food/pages/pedidos.dart';
import 'package:delivery_food/pages/perfilEdit.dart';
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
          Container(
              height: 60.0,
              color: Colors.transparent,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(24, 54, 105, 1),
                ),
              )),
          Container(
            child: Image(
              image: NetworkImage(
                  'https://cdn.discordapp.com/attachments/956310286866972794/956722285975306260/Blue_Restaurant_Logo__1_-removebg-preview.png',
                  scale: 2),
            ),
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
                    "Usuário",
                    style: TextStyle(
                        color: Color.fromARGB(255, 233, 255, 252),
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  )))),
          Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.89, -0.85),
                child: Icon(
                  Icons.person,
                  color: Color(0xFF183669),
                  size: 60,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.18, -0.65),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 60, 10, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 2,
                    decoration: BoxDecoration(
                      color: Color(0xFF183669),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.48, -0.76),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
                  child: Text(
                    'Editar perfil',
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.46, -0.83),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                  child: Text(
                    'User Name',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Align(
                //Arrow button
                alignment: AlignmentDirectional(0.92, -0.84),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF183669),
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PerfilEdit()),
                    );
                  },
                ),
              ), // Second item
              Align(
                alignment: AlignmentDirectional(-0.95, -0.85),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 70, 10, 0),
                  child: Icon(
                    Icons.pin_drop,
                    color: Color(0xFF183669),
                    size: 60,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.18, -0.65),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 135, 10, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 2,
                    decoration: BoxDecoration(
                      color: Color(0xFF183669),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.48, -0.76),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(66, 100, 0, 0),
                  child: Text(
                    'Gerencie seus endereços de entrega',
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.46, -0.83),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 80, 10, 0),
                  child: Text(
                    'Endereços',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Align(
                //Arrow button
                alignment: AlignmentDirectional(0.96, -0.84),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 75, 10, 0),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF183669),
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Perfil()),
                      );
                    },
                  ),
                ),
              ),
              Align(
                // Third item
                alignment: AlignmentDirectional(-0.95, -0.85),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 140, 10, 0),
                  child: Icon(
                    Icons.star_rate_rounded,
                    color: Color(0xFF183669),
                    size: 60,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.18, -0.65),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 205, 10, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 2,
                    decoration: BoxDecoration(
                      color: Color(0xFF183669),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.48, -0.76),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(42, 170, 0, 0),
                  child: Text(
                    'Ajude-nos avaliando o app',
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.46, -0.83),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(25, 150, 0, 0),
                  child: Text(
                    'Avaliar aplicativo',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.96, -0.84),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 145, 10, 0),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF183669),
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Perfil()),
                      );
                    },
                  ),
                ),
              ),
              Align(
                //Fourth item
                alignment: AlignmentDirectional(-0.95, -0.85),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 220, 10, 0),
                  child: Icon(
                    Icons.chat,
                    color: Color(0xFF183669),
                    size: 50,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.18, -0.65),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 275, 10, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 2,
                    decoration: BoxDecoration(
                      color: Color(0xFF183669),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.48, -0.76),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(55, 240, 0, 0),
                  child: Text(
                    'Seu feedback é muito importante',
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.46, -0.83),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 220, 0, 0),
                  child: Text(
                    'Fale conosco',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.96, -0.84),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 215, 10, 0),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF183669),
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => faleConosco()),
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Menu()),
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
                      MaterialPageRoute(builder: (context) => Pedidos()),
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
                      MaterialPageRoute(builder: (context) => Cart()),
                    );
                  },
                ),
                label: 'Carrinho'),
          ]),
    );
  }
}
