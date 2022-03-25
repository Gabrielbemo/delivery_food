import 'package:delivery_food/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DeliveryFood());
}

class DeliveryFood extends StatelessWidget {
  const DeliveryFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App De Delivery',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const Login(),
    );
  }
}