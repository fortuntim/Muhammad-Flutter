import 'package:flutter/material.dart';
import 'package:untitled3/screens/les74_inkwell/les74_inkwell.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // В routes прописываются маршруты к виджетам
      routes: {
        // Путь к корневому виджету
        '/': (context) => const myInkWell(),

        // Путь к любому другому виджету
        // '/название': (context) => const myInkWell(),
      },


      // initialRoute запускает виджет, который указан после :
      initialRoute: '/',
    );
  }
}