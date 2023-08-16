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
        backgroundColor: Color.fromARGB(255, 29, 189, 201),
        title: Text("Cadastro"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextField(
            cursorColor: Color.fromARGB(255, 69, 255, 255),
            decoration: InputDecoration(
              prefixIcon:
                  Icon(Icons.person, 
                  color: Color.fromARGB(255, 30, 233, 230)),
              label: Text("Informe seu Nome"),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            cursorColor: Color.fromARGB(255, 69, 255, 255),
            decoration: InputDecoration(
              prefixIcon:
                  Icon(Icons.email, 
                  color: Color.fromARGB(255, 30, 233, 230)),
              label: Text("Informe seu E-mail"),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            cursorColor: Color.fromARGB(255, 69, 255, 255),
            decoration: InputDecoration(
              prefixIcon:
                  Icon(Icons.lock, 
                  color: Color.fromARGB(255, 30, 233, 230)),
              label: Text("Informe sua Senha"),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            cursorColor: Color.fromARGB(255, 69, 255, 255),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.calendar_month,
                  color: Color.fromARGB(255, 30, 233, 230)),
              label: Text("Informe sua Data de Nascimento"),
              border: OutlineInputBorder(),
            ),
            onTap: () {
              showDatePicker(context: context, 
              initialDate: DateTime.now(), 
              firstDate: DateTime(1900,1,1), 
              lastDate: DateTime.now(),

              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 49, 227, 233),
            ),
            child: Text("Salvar"),
          )
        ],
      ),
    );
  }
}
