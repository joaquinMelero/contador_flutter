//Widget Center, que es nuestra pantalla principal

import 'package:flutter/material.dart';

//creo un nuevo widget (clase) que será la pantalla principal
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int cont = 0; //se declara aqui para que sea una propiedad de la clase

  //método incrementar
  void incrementar() {
    cont++;
    setState(() {});
  }

  //método decremento
  void decrementar() {
    if (cont > 0) {
      cont--;
    }
    setState(() {});
  }

  //método reset
  void reset() {
    cont = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //declaración de variables

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 187, 221, 236),
      appBar: AppBar(
        title: const Text('App Contador'),
        elevation: 10.0, //darle sombra ala bara del menu
      ), //propiedad appBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Número de Clics', style: TextStyle(fontSize: 40)),
            Text(
              '$cont',
              style: const TextStyle(
                  color: Colors.red, fontWeight: FontWeight.w300, fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButton(
          incrementarFn: incrementar,
          decrementarFn: decrementar,
          resetFn: reset),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final Function incrementarFn;
  final Function decrementarFn;
  final Function resetFn;

  const CustomFloatingActionButton({
    super.key,
    required this.incrementarFn,
    required this.decrementarFn,
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
            child: const Icon(
              Icons.rocket,
            ),
            onPressed: () => incrementarFn()),
        FloatingActionButton(
            child: const Icon(
              Icons.minimize,
            ),
            onPressed: () => decrementarFn()),
        FloatingActionButton(
            child: const Icon(
              Icons.restart_alt,
            ),
            onPressed: () => resetFn()),
      ],
    );
  }
}
