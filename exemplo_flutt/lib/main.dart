import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.green,
          primaryColorDark: Colors.green[900],
          accentColor: Colors.amber[900]),
      home: HomePage(),
    );
  }
}

//Transformando o layout em página para depois retirar do arquivo
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
          print("Funciona o Click");
        },
        child: Icon(Icons.import_contacts),
      ),
    );
  }
}
