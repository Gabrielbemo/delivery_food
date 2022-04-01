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
          Row(
            children: [
              new Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 12.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('iMAGEM USUÁRIO'),
                  ),
                ),
              ),
              Text('nOME USUÁRIO'),
              new Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.only(left: 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('IMAGEM SETA'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              new Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 12.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('iMAGEM USUÁRIO'),
                  ),
                ),
              ),
              Text('nOME USUÁRIO'),
              new Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.only(left: 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('IMAGEM SETA'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              new Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 12.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('iMAGEM USUÁRIO'),
                  ),
                ),
              ),
              Text('nOME USUÁRIO'),
              new Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.only(left: 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('IMAGEM SETA'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              new Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 12.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('iMAGEM USUÁRIO'),
                  ),
                ),
              ),
              Text('nOME USUÁRIO'),
              new Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.only(left: 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('IMAGEM SETA'),
                  ),
                ),
              ),
            ],
          ),
          
          Row(
            children: [
              new Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 12.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('iMAGEM USUÁRIO'),
                  ),
                ),
              ),
              Text('nOME USUÁRIO'),
              new Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.only(left: 0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text('IMAGEM SETA'),
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
