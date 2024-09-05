import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar( 
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child:IconButton(icon: Icon(Icons.menu, color: Colors.green[900], size: 36,), onPressed: () { print('boton de menu'); },),
      ),
      actions: [Padding(
        padding: const EdgeInsets.only(right: 50.0),
        child: IconButton(icon: Icon(Icons.person, size: 36,color: Colors.red[800],), onPressed: () { print('Hola mundo'); },),
      )],

    ),
    body: const Column(children: [
      //texto "i want to eat"
      Padding(
        padding: EdgeInsets.all(24.0),
        child: Row(
          children: [
            Text('I want to ', style: TextStyle(fontSize: 25),),
            Text('EAT', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
          ],
        ),
      )
        //Tab bar

        //Tab bar view
    ],),
    );
  }
}