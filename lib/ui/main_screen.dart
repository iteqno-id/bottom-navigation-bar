import 'package:bottom_nav/ui/account_screen.dart';
import 'package:bottom_nav/ui/cart_screen.dart';
import 'package:bottom_nav/ui/home_screen.dart';
import 'package:bottom_nav/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = const [
      HomeScreen(),
      CartScreen(),
      AccountScreen(),
    ];

    return Scaffold(
      body: screens[selectedIndex ?? 0],
      bottomNavigationBar: BottomNavigation(
        onItemSelected: onItemSelected,
      ),
    );
  }

  onItemSelected(index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
