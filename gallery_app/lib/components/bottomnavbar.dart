import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:cupertino_icons/cupertino_icons.dart';

class ButtomNavBar extends StatelessWidget {
  const ButtomNavBar(
      {super.key, required this.currentIndex, required this.onTap});

  final int currentIndex;
  final Function(int) onTap;

  BottomNavigationBarItem _buildTabItem(
      IconData icon, IconData filledIcon, int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        currentIndex == index ? filledIcon : icon,
        color: currentIndex == index ? Colors.black : Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.7), blurRadius: 1.0)
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(3, 10, 3, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CupertinoTabBar(
            currentIndex: currentIndex,
            onTap: onTap,
            height: 60,
            backgroundColor: Colors.grey[200],
            inactiveColor: Colors.black,
            activeColor: Colors.white,
            items: [
              _buildTabItem(CupertinoIcons.home, CupertinoIcons.home, 0),
              _buildTabItem(CupertinoIcons.heart, CupertinoIcons.heart_fill, 1),
              _buildTabItem(CupertinoIcons.settings, CupertinoIcons.settings_solid, 2),
            ],
          ),
        ),
      ),
    );
  }
}
