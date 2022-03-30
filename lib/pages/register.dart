import 'package:delivery_food/pages/login.dart';
import 'package:delivery_food/pages/registerPass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 255, 252),
      appBar: AppBar(),
      body: Builder(
          builder: (context) => Center(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.all(40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                          Text(
                            'Seja Bem-Vindo!!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color.fromRGBO(24, 54, 105, 1)),
                          ),
                          Text(
                            'Informe seus dados pessoais.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Color.fromRGBO(24, 54, 105, 0.5)),
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                          TextFormField(
                            decoration: InputDecoration(
                              fillColor: Color.fromARGB(255, 211, 6, 6),
                              isDense: true,
                              border: OutlineInputBorder(),
                              labelText: 'Nome',
                            ),
                            validator: (value){
                              if(value!.isNotEmpty && value.length > 2){
                                return null;
                              } else if (value.length < 3 && value.isNotEmpty){
                                return 'Nome muito pequeno';
                              } else {
                                return 'Campo nome obrigatório';
                              }
                            },
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                          TextFormField(
                            maxLength: 11,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(),
                              labelText: 'CPF',
                            ),
                            validator: (value){
                              if(value!.length == 11 && value.isNotEmpty){
                                return null;
                              } else if(value.length < 11 && value.isNotEmpty){
                                return 'Cpf precisa ter 11 caracteres';
                              } else{
                                return 'Campo Cpf Obrigatório';
                              }
                            },
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                          TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                            ),
                            validator: (value){
                              if(value!.isNotEmpty &&  value.toString().contains('@gmail.com') ){
                                return null;
                              }else if (value.isNotEmpty &&  value != value.toString().compareTo('@gmail.com') ){
                                return 'email invalido';
                              }
                              else{
                                return 'Campo de email obrigatório';
                              }
                            },
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                          TextFormField(
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(),
                              labelText: 'Celular',
                            ),
                            validator: (value){ 
                              if(value!.isNotEmpty && value.length == 10 || value.length == 11){
                                return null;
                              }else if(value.isNotEmpty && value.length < 10){
                                return 'Número de celular menor que o normal';
                              }
                              else{
                                return 'Campo de celular obrigatório';
                              }
                            },
                          ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(),
                              labelText: 'Senha',
                            ),
                            validator: (value){
                              if(value!.isNotEmpty && value.length > 6){
                                return null;
                              } else if (value.isNotEmpty && value.length < 7){
                                return 'Senha precisa ser maior que 6 caracteres';
                              }else{
                                return 'Campo Senha obrigatório';
                              }
                            },
                          ),
                          // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                          // TextFormField(
                          //   obscureText: true,
                          //   decoration: InputDecoration(
                          //     isDense: true,
                          //     border: OutlineInputBorder(),
                          //     labelText: 'Confirme sua senha',
                          //   ),
                          // ),
                          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                          ClipRRect(
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
                                    if(!_formKey.currentState!.validate()){
                                      return;
                                    }
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Login()),
                                    );
                                  },
                                  child: const Text('Enviar'),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              )),
    );
  }
}
