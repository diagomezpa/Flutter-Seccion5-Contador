import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // sirve para identificar la clase
  // y para que el widget pueda ser reutilizado en el árbol de widgets.
  // El super.key es opcional, pero es una buena práctica incluirlo.

  @override
  Widget build(BuildContext context) {
    return const Center(child:  Text('Hola Mundo home_screen.dart'));
  }
}