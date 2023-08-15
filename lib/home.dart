import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/contador');
            },
            leading: Icon(Icons.calculate,
                size: 36, color: Color.fromARGB(255, 110, 194, 50)),
            title: Text("Contador"),
            subtitle: Text("Exemplo de incremento e decremento"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/curtir');
            },
            leading: Icon(Icons.favorite,
                size: 36, color: Color.fromARGB(255, 233, 53, 40)),
            title: Text("Curtir"),
            subtitle: Text("Exemplo de Curtir e Descurtir"),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/Cadastro');
            },
            leading: Icon(Icons.app_registration,
                size: 36, color: Color.fromARGB(255, 40, 156, 233)),
            title: Text("Cadastro"),
            subtitle: Text("Exemplo de Cadastrar"),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}

