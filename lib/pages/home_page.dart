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
  List<Tab> myTabs = [
    // Donut tab
    Tab(
      icon: const ImageIcon(AssetImage('lib/icons/donut.png')),
      text: 'Donuts', // Nombre del tab
    ),

    // Burger tab
    Tab(
      icon: const ImageIcon(AssetImage('lib/icons/burger.png')),
      text: 'Burgers', // Nombre del tab
    ),

    // Smoothie tab
    Tab(
      icon: const ImageIcon(AssetImage('lib/icons/smoothie.png')),
      text: 'Smoothies', // Nombre del tab
    ),

    // Pancake tab
    Tab(
      icon: const ImageIcon(AssetImage('lib/icons/pancakes.png')),
      text: 'Pancakes', // Nombre del tab
    ),

    // Pizza tab
    Tab(
      icon: const ImageIcon(AssetImage('lib/icons/pizza.png')),
      text: 'Pizzas', // Nombre del tab
),
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
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.green[900], size: 36),
              onPressed: () {
                print('Botón de menú');
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: IconButton(
                icon: Icon(Icons.person, size: 36, color: Colors.red[800]),
                onPressed: () {
                  print('Hola mundo');
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            // Texto "I want to eat"
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            // Tab bar
            TabBar(tabs: myTabs),
            // Tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // Donut
                  DonutTab(),
                  // Burger tab
                  const BurgerTab(),
                  // Smoothie Tab
                  const SmoothieTab(),
                  // Pancake tab
                  const PancakeTab(),
                  // Pizza tab
                  const PizzaTab(),
                ],
              ),
            ),
            // Parte inferior con la información del carrito
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, -1), // Cambia la sombra hacia arriba
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '2 Items | \$45',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Delivery Charges Included',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Acción del botón View Cart
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink, // Color del botón
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                    ),
                    child: const Text(
                      'View Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
),
);
}