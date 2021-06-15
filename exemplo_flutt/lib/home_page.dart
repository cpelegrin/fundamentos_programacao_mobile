import 'package:exemplo_flutt/segunda_pagina.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Título"),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            "Hello World!",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SegundaPagina();
          }));
        },
        child: Icon(Icons.import_contacts),
      ),
    );
  }
}
