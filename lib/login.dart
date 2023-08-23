// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var emailController = TextEditingController();
  var senhaController = TextEditingController();

  int x = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 140, 40, 233),
        title: Text("Login"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: emailController,
            cursorColor: Color.fromARGB(255, 140, 40, 233),
            decoration: InputDecoration(
              prefixIcon:
                  Icon(Icons.email, 
                  color: Color.fromARGB(255, 140, 40, 233)),
              label: Text("Informe seu E-mail"),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: senhaController,
            cursorColor:Color.fromARGB(255, 140, 40, 233),
            decoration: InputDecoration(
              prefixIcon:
                  Icon(Icons.lock, 
                  color:Color.fromARGB(255, 140, 40, 233)),
              label: Text("Informe sua Senha"),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          
          ElevatedButton(
            onPressed: () {
              print("O botão foi clicado");
              print(emailController.text);
              print(senhaController.text);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:Color.fromARGB(255, 140, 40, 233),
            ),
            child: Text("Salvar"),
          )
        ],
      ),
    );
  }
}
