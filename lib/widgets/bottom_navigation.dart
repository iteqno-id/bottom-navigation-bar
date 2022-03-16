import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key, required this.onItemSelected}) : super(key: key);

  final Function onItemSelected;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Account"),
      ],
      currentIndex: selectedIndex ?? 0,
      onTap: (index) {
        widget.onItemSelected(index);
        setState(() {
          selectedIndex = index;
        });
      },
    );
  }
}
