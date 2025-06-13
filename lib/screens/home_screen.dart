import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // sirve para identificar la clase
  // y para que el widget pueda ser reutilizado en el árbol de widgets.
  // El super.key es opcional, pero es una buena práctica incluirlo.

  @override
  Widget build(BuildContext context) {
    // El método build es donde se construye la interfaz de usuario del widget.
    // el build context es el contexto en el que se construye el widget.
    // El contexto es un objeto que contiene información sobre el árbol de widgets


    // scaffold es un widget que proporciona una estructura básica para la aplicación. es como un lienzo en blanco
    // donde podemos agregar otros widgets como AppBar, Drawer, BottomNavigationBar, etc.
    // Scaffold es un widget que proporciona una estructura básica para la aplicación.

    const fontSize30= TextStyle(fontSize: 30); // definimos un estilo de texto para usarlo en varios widgets

    return  Scaffold( // le quitamos el const porque el appbar va a cambiar despues de construida la aplicacion porque el por ejemplo puede cambiar el tirulo  
      // 
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 10.0, // eleva el appbar 10 puntos
      ),
      backgroundColor: Colors.white,
      body:   Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center, // centra los widgets en el eje vertical
      
        children: const [
          Text('clicks counter',style: fontSize30 ),
          const SizedBox(height: 20), // espacio entre widgets
          Text('40',style: fontSize30)
        ],
      ),
      ),
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aquí puedes agregar la lógica para incrementar el contador
          print('Floating Action Button Pressed');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}