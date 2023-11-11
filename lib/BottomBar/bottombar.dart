import 'package:flutter/material.dart';
import 'package:sewamotor/BottomBar/myhome.dart';
import 'package:sewamotor/BottomBar/mybooking.dart';
import 'package:sewamotor/BottomBar/myprofile.dart';

class BottomBars extends StatefulWidget {
  const BottomBars({super.key});

  @override
  State<BottomBars> createState() => _BottomBarsState();
}

class _BottomBarsState extends State<BottomBars> {
  int selectedIndex = 0;
    List <Widget> item = [
    Home(),
    Booking(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: item[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Booking'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
    );
  }
}
