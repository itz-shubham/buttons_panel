import 'package:buttons_panel/buttons_panel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentIndex = 0;
  int currentIndex2 = 0;
  int currentIndex3 = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Buttons Panel Example"),
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonsPanel(
              currentIndex: currentIndex,
              borderRadius: BorderRadius.circular(32),
              backgroundColor: Colors.black.withOpacity(0.05),
              selectedItemBackgroundColor: Theme.of(context).primaryColor,
              selectedIconThemeData: const IconThemeData(color: Colors.white),
              padding: const EdgeInsets.symmetric(horizontal: 32),
              onTap: (value) => setState(() => currentIndex = value),
              children: const [
                Icon(Icons.home),
                Icon(Icons.search),
                Icon(Icons.person),
              ],
            ),
            ButtonsPanel(
              currentIndex: currentIndex2,
              borderRadius: BorderRadius.circular(32),
              backgroundColor: Colors.black.withOpacity(0.05),
              selectedItemBackgroundColor: Theme.of(context).primaryColor,
              selectedIconThemeData: const IconThemeData(color: Colors.white),
              padding: const EdgeInsets.symmetric(horizontal: 32),
              selectedTextStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              unselectedTextStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              onTap: (value) => setState(() => currentIndex2 = value),
              children: const [
                Text("Home"),
                Text("Search"),
                Text("Profile"),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ButtonsPanel(
                currentIndex: currentIndex3,
                direction: Axis.vertical,
                borderRadius: BorderRadius.circular(32),
                backgroundColor: Colors.black.withOpacity(0.05),
                selectedItemBackgroundColor: Theme.of(context).primaryColor,
                selectedIconThemeData: const IconThemeData(color: Colors.white),
                padding: const EdgeInsets.symmetric(horizontal: 32),
                selectedTextStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                unselectedTextStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                onTap: (value) => setState(() => currentIndex3 = value),
                children: const [
                  Text("1"),
                  Text("2"),
                  Text("3"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
