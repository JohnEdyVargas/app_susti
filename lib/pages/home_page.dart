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
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Text("Location"),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_city),
                          Text("Bali , indonesia"),
                        ],
                      ),
                      Icon(Icons.alarm),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        unselectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
            backgroundColor: Colors.deepPurpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: "save",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trip_origin),
            label: "trip ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "profile",
          ),
        ],
      ),
    );
  }

  _avatar() {
    String link;
    String text;

    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        child: Column(
          children: [],
        ),
      );
    });
  }
}
