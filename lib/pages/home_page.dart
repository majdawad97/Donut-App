import 'package:donut_app/util/my_tabs.dart';
import 'package:flutter/material.dart';

import '../tabs/burger_tab.dart';
import '../tabs/donut_tab.dart';
import '../tabs/pancake_tab.dart';
import '../tabs/pizza_tab.dart';
import '../tabs/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // my tabs
  List<Widget> myTabs = const [
    // donut tab
    MyTab(iconPath: 'icons/donut.png'),
    // burger tab
    MyTab(iconPath: 'icons/burger.png'),
    // smoothie tab
    MyTab(iconPath: 'icons/smoothie.png'),
    // pancakes tab
    MyTab(iconPath: 'icons/pancakes.png'),
    // pizza tab
    MyTab(iconPath: 'icons/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Drawer();
                });
              },
              child: Image.asset(
                'icons/list.png',
                color: Colors.grey[700],
              ),
            ),
            // child: IconButton(
            //   icon: Icon(
            //     Icons.menu,
            //     color: Colors.grey,
            //     size: 36,
            //   ),
            //   onPressed: () {
            //     // open drawer
            //   },
            // ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 36,
                ),
                onPressed: () {
                  // account button tapped
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            // i want to eat
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text(
                    ' I want to ',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  )
                ],
              ),
            ),

            const SizedBox(height: 24),
            // tab bar
            TabBar(tabs: myTabs),
            // tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  // donut page
                  DonutTab(),
                  // burger page
                  BurgerTab(),
                  // smoothie page
                  SmoothieTab(),
                  // pancake page
                  PancakeTab(),
                  // pizza page
                  PizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
