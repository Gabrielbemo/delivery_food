import 'package:delivery_food/models/pedido.dart';

class PedidoRepository {
  static List<Pedido> pedidos = [
    Pedido(
      id: 1,
      endereco: "Rua dos Bobos n°0",
      price: 545,
      status: "entregue"
    ),
    Pedido(
      id: 2,
      endereco: "Av Sao Paulo n°1",
      price: 2,
      status: "acaminho"
    ),
  ];
}