import 'package:delivery_food/models/Food.dart';

class FoodRepository {
  static List<Food> foods = [
    Food(
      id: 1,
      name: "X-Burger",
      price: 10,
      igredients: "HAMBURGER, PAO, SAL"
    ),
    Food(
      id: 2,
      name: "X-Salada",
      price: 12,
      igredients: "HAMBURGER, PAO, SAL"
    ),
    Food(
      id: 3,
      name: "X-Calabresa",
      price: 13,
      igredients: "HAMBURGER, PAO, SAL"
    ),
    Food(
      id: 4,
      name: "X-Bacon",
      price: 14,
      igredients: "HAMBURGER, PAO, SAL"
    ),
    Food(
      id: 5,
      name: "X-Frango",
      price: 14,
      igredients: "HAMBURGER, PAO, SAL"
    )
  ];
}