import 'package:flutter/material.dart';
import 'package:mental_health_app/Pages/Home/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: buildBottomNavigationBar(),
      body: buildHomeBody(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      unselectedIconTheme: IconThemeData(color: Colors.grey[500]),
      selectedIconTheme: IconThemeData(color: Colors.blue[800]),
      onTap: _navigateBottomBar,
      items: const[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_view,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.mail_rounded,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: ''),
      ],
    );
  }
}
