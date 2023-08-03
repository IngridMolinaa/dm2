// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const PaginaInicial());
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        '/':(context) => Home(),
        '/contador':(context) => Contador(),
        '/curtir':(context) => Curtir(),
      },
    );
  }
}

class Curtir extends StatelessWidget {
  const Curtir ({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curtir"),
      ),
      body: Center (
        child: Column(
          children: [
            IconButton (
              iconSize: 40,
              icon: Icon(Icons.favorite_outline),
              onPressed: () {},
             ),
          ],
        

          ),
       ),
    );
  }

}

class Home extends StatelessWidget {
  const Home ({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView(
        children: [ 
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, '/contador');
            
            },
            leading: Icon(Icons.calculate, size:36 , color: Color.fromARGB(255, 57, 244, 54) ),
            title: Text("Contador"),
            subtitle: Text("Exemplo de incremento e decremento"),
            trailing: Icon(Icons.chevron_right),

          ),

          ListTile(
            onTap: (){
              Navigator.pushNamed(context, '/curtir');
            },
            leading: Icon(Icons.favorite, size: 36 , color: Color.fromARGB(255, 255, 39, 24) ),
            title: Text("Curtir"),
            subtitle: Text("Exemplo de Curtir e Descurtir"),
            trailing: Icon(Icons.chevron_right),
          
          )
        ],
      ),
    );
    
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int x = 100;
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 106, 4, 146),
        title: Text("Meu Aplicativo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(x.toString()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 190, 59, 251),
              ),
              onPressed: () {
                setState(() {
                  x = x+1;
                });
              },
              child: Text("Aumentar"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 190, 59, 251),
              ),
              onPressed: () {
                setState(() {
                  x = x-1;
                });
              },
              child: Text("Diminuir"),
            ),
          ],
        ),
      ),
    );
  }
}
