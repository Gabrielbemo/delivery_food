import 'package:delivery_food/models/Food.dart';
import 'package:delivery_food/pages/cart.dart';
import 'package:delivery_food/pages/detalhe_comida.dart';
import 'package:delivery_food/pages/pedidos.dart';
import 'package:delivery_food/pages/perfil.dart';
import 'package:delivery_food/repositories/food_repository.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  final List<Food> foodList = FoodRepository.foods;

  void debugTest() {
    debugPrint(foodList.length.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 255, 252),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(24, 54, 105, 1),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(Icons.more_vert),
              )),
        ],
      ),
      body: Column(
        children: [
          const Center(
            child: const Image(
              image: NetworkImage(
                  'https://cdn.discordapp.com/attachments/956310286866972794/956722285975306260/Blue_Restaurant_Logo__1_-removebg-preview.png',
                  scale: 3),
            ),
          ),
          Container(
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      child: Container(
                          color: Color.fromRGBO(24, 54, 105, 1),
                          height: 20,
                          width: 20,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50.0, vertical: 12.0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Icon(Icons.timer_sharp,
                                                size: 20),
                                          ),
                                          TextSpan(
                                            text: "  50 mins",
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                              Expanded(child: Container()),
                              new Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50.0, vertical: 12.0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Icon(Icons.motorcycle,
                                                size: 20),
                                          ),
                                          TextSpan(
                                            text: "  R\$ 4,00",
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ],
                          ))),
                ],
              )),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset(
                          'assets/images/${foodList[index].id}.png'),
                      title: Text('#${foodList[index].id} ${foodList[index].name}'),
                      subtitle: Text('R\$ ${foodList[index].price}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetalheComida(),
                            settings: RouteSettings(
                              arguments: foodList[index],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  separatorBuilder: (_, __) => const Divider(),
                  itemCount: foodList.length))
        ],
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
