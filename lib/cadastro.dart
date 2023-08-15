// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  int x = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 58, 148, 200),
        title: Text("Cadastro"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextField(
            cursorColor: Color.fromARGB(255, 69, 255, 255),
            decoration: InputDecoration(
              icon: Icon(Icons.email, color: Color.fromARGB(255, 30, 233, 230)),
              hintText: "Informe seu email",
            ),
          ),
          TextField(
            cursorColor: Color.fromARGB(255, 69, 255, 255),
            decoration: InputDecoration(
              icon: Icon(Icons.lock,  color: Color.fromARGB(255, 30, 233, 230)),
              hintText: "Informe sua senha",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 49, 172, 233),
            ),
            child: Text("Salvar"),
          )
        ],
      ),
    );
  }
}
