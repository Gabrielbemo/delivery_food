import 'package:delivery_food/models/Food.dart';

class FoodRepository {
  static List<Food> foods = [
    Food(
      id: 1,
      name: "X-Burger",
      price: 10,
      igredients: "PAO • HAMBURGER • QUEIJO"
    ),
    Food(
      id: 2,
      name: "X-Salada",
      price: 12,
      igredients: "PAO • HAMBURGER • QUEIJO • SALADA"
    ),
    Food(
      id: 3,
      name: "X-Calabresa",
      price: 13,
      igredients: "PAO • HAMBURGER • QUEIJO • CALABRESA"
    ),
    Food(
      id: 4,
      name: "X-Bacon",
      price: 14,
      igredients: "PAO • HAMBURGER • QUEIJO • BACON"
    ),
    Food(
      id: 5,
      name: "X-Frango",
      price: 14,
      igredients: "PAO • HAMBURGER • QUEIJO • FRANGO"
    )
  ];
}