import 'package:delivery_food/models/Food.dart';
import 'package:delivery_food/models/pedido.dart';
import 'package:delivery_food/pages/cart.dart';
import 'package:delivery_food/pages/detalhe_comida.dart';
import 'package:delivery_food/pages/perfil.dart';
import 'package:delivery_food/pages/register.dart';
import 'package:delivery_food/pages/menu.dart';
import 'package:delivery_food/repositories/pedido_repository.dart';
import 'package:flutter/material.dart';
import 'package:delivery_food/repositories/food_repository.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/material.dart';

class Pedidos extends StatelessWidget {
  Pedidos({Key? key}) : super(key: key);

  List<Pedido> pedidos = PedidoRepository.pedidos;

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
                          Image.asset('assets/images/${pedidos[index].status}.png'),
                      title: Text('Endereço # ${pedidos[index].endereco}'),
                      subtitle: Text('R\$ ${pedidos[index].price}'),
                      trailing: const Icon(Icons.delete),
                      onTap: () {
                      },
                    );
                  },
                  separatorBuilder: (_, __) => const Divider(),
                  itemCount: pedidos.length)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 2,
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
