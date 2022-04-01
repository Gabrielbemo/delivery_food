import 'package:delivery_food/models/Food.dart';
import 'package:delivery_food/pages/detalhe_comida.dart';
import 'package:delivery_food/pages/pedidos.dart';
import 'package:delivery_food/pages/perfil.dart';
import 'package:delivery_food/pages/register.dart';
import 'package:delivery_food/pages/menu.dart';
import 'package:flutter/material.dart';
import 'package:delivery_food/repositories/food_repository.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);

  List<Food> foods = [
    Food(
        id: 1,
        name: "X-Burger",
        price: 10,
        igredients: "PAO • HAMBURGER • QUEIJO"),
    Food(
        id: 2,
        name: "X-Salada",
        price: 12,
        igredients: "PAO • HAMBURGER • QUEIJO • SALADA"),
    Food(
        id: 1,
        name: "X-Burger",
        price: 10,
        igredients: "PAO • HAMBURGER • QUEIJO"),
    Food(
        id: 2,
        name: "X-Salada",
        price: 12,
        igredients: "PAO • HAMBURGER • QUEIJO • SALADA"),
    Food(
        id: 1,
        name: "X-Burger",
        price: 10,
        igredients: "PAO • HAMBURGER • QUEIJO"),
    Food(
        id: 2,
        name: "X-Salada",
        price: 12,
        igredients: "PAO • HAMBURGER • QUEIJO • SALADA"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 255, 252),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(24, 54, 105, 1),
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.all(30),
              color: Color.fromARGB(255, 81, 119, 185),
              height: 300,
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading:
                          Image.asset('assets/images/${foods[index].id}.png'),
                      title: Text('Comida # ${foods[index].id}'),
                      subtitle: Text('R\$ ${foods[index].price}'),
                      trailing: const Icon(Icons.delete),
                      onTap: () {
                      },
                    );
                  },
                  separatorBuilder: (_, __) => const Divider(),
                  itemCount: foods.length)),
          new Align(
            alignment: Alignment.topRight,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 53, vertical: 12.0),
              child: Text('Valor Total: R\$ 34,90'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 16, 107, 28)),
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
                  child: const Text('Finalizar compra'),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 3,
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
