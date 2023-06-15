import 'package:contador_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  //en Dart toda app necesita un main
  runApp(
      const Myapp()); //ejecuto la app. Se crea un widget(bloque). Estos son clases
}

//Todos los Widgets son clases. crear Widget MyApp, definimos la clase MyApp y la
//vamos a extender de un StatelessWidget:

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override

  /*
  BuildContext es una descripción de la posición del widget en el árbol de
   widgets y además trae muchisima mas informacion sobre el elemento que 
   estamos renderizando, como el estado, tipo de widget, etc
  */

  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();

//MaterialApp es un widget que nos proporciona un layout orientado a Material Design.
    return const MaterialApp(
      debugShowCheckedModeBanner:
          false, //quitar etiqueta superior derecha debug
      home:
          HomeScreen(), //importo la pantalla principal del archivo home_screen
    );
  }
}
