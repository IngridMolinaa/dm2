import 'package:flutter/material.dart';

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
        backgroundColor: Color.fromARGB(255, 61, 159, 46),
        title: Text("Contador"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(x.toString()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 46, 159, 67)),
              onPressed: () {
                setState(() {
                  x = x + 1;
                });
              },
              child: Text("Incrementa"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 63, 136, 32)),
              onPressed: () {
                setState(() {
                  x = x - 1;
                });
              },
              child: Text("Decrementa"),
            )
          ],
        ),
      ),
    );
  }
}


