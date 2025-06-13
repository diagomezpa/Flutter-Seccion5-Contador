import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key}); 
  @override
  State<HomeScreen> createState() => _HomeScreenState(); // ceaca el estado del widget HomeScreen
}
 
class _HomeScreenState extends State<HomeScreen> {
  int counter = 1; // ahora es una propiedad
 // sirve para identificar la clase
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
      
        children:  [
          Text('clicks counter',style: fontSize30 ),
          SizedBox(height: 20), // espacio entre widgets
          Text('$counter',style: fontSize30)
        ],
      ),
      ),
     // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aquí puedes agregar la lógica para incrementar el contador
        counter = counter + 1; // incrementamos el contador
          setState(() { // funcion anonima que se llama cuando se presiona el botón
            // setState se usa para notificar al framework que el estado del widget ha cambiado
            // y que debe reconstruir el widget con el nuevo estado.
            
          });
           print(counter);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}