import 'package:flutter/material.dart';
import 'package:primer_proyecto/tab/burger_tab.dart';
import 'package:primer_proyecto/tab/donut_tab.dart';
import 'package:primer_proyecto/tab/pancake_tab.dart';
import 'package:primer_proyecto/tab/pizza_tab.dart';
import 'package:primer_proyecto/tab/smoothie_tab.dart';
import 'package:primer_proyecto/utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget>myTabs = [
     //donut tap
   const MyTab(iconPath: 'lib/icons/donut.png',),
  //burger tab
  const MyTab(iconPath: 'lib/icons/burger.png',),
  //smoothie tab
  const MyTab(iconPath: 'lib/icons/smoothie.png',),
  //pancaketab
  const MyTab(iconPath: 'lib/icons/pancakes.png',),
  //pizzatab
  const MyTab(iconPath: 'lib/icons/pizza.png',),


  ];
 


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
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
      body:  Column(children: [
        //texto "i want to eat"
       const Padding(
          padding: EdgeInsets.all(24.0),
          child: Row(
            children: [
              Text('I want to ', style: TextStyle(fontSize: 25),),
              Text('SLEEP', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),),
            ],
          ),
        ),
          //Tab bar
          TabBar(tabs: myTabs),
          //Tab bar view
            Expanded(child: TabBarView(children: [
              //Donut
              DonutTab(),
              //Burguer tab
              const BurgerTab(),
              //Somoothie Tab
              const SmoothieTab(),
              //Pancake tab
              const PancakeTab(),
              //pizzatab
              const PizzaTab(),

            ]))
          //carrito
      ],),
      ),
    );
  }
}