import 'package:flutter/material.dart';
import 'package:finance/colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key:key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.Colors.backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: color.Colors.accentColor,
        unselectedItemColor: color.Colors.disableColor,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: 'Report'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stock'),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Cards'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const[
              TopSection(),
              ContactSection(),

            ]
          )
        )
      )
    );
  }
}