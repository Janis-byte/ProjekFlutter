import 'package:flutter/material.dart';
import 'package:flutter_application_4/image_widget.dart';
import 'package:flutter_application_4/inputselection.dart';

class Tesscaffold extends StatefulWidget {
  const Tesscaffold({super.key});

  @override
  State<Tesscaffold> createState() => _TesscaffoldState();
}

class _TesscaffoldState extends State<Tesscaffold> {
  var _selectedIndex = 0;

  onTapBar(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        backgroundColor: Colors.red,
        foregroundColor: Colors.blue,
        actions: [
          Icon(Icons.more_vert),
          Icon(Icons.logout),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Inputselection(),
            ImageWidget(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: onTapBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: "Login",
            )
          ]),
    );
  }
}
