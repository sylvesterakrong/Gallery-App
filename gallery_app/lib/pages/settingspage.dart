// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gallery_app/components/bottomnavbar.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("S E T T I N G S"),
      ),
      body: ListView(
        children: [
          Container(
            height: 350,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 350,
            color: Colors.grey[200],
          ),
        ],
      ),

      bottomNavigationBar: ButtomNavBar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/homepage');
          }else if(index == 1){
            Navigator.pushReplacementNamed(context, '/favoritepage');
          }if (index == 2) {
            //no neeed since we are on the settings page
          }
        },
      ),

      //bottom navigation tab
      // bottomNavigationBar: Container(
      //   color: Colors.black,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      //     child: GNav(
      //       backgroundColor: Colors.black,
      //       color: Colors.white,
      //       activeColor: Colors.white,
      //       tabBackgroundColor: Colors.grey.shade800,
      //       gap: 9,
      //       padding: const EdgeInsets.all(14),
      //       tabs: [
      //         GButton(
      //           icon: Icons.home,
      //           text: 'Home',
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => HomePage(),
      //               ),
      //             );
      //           },
      //         ),
      //         GButton(
      //           icon: Icons.favorite_border,
      //           text: 'Favorite',
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => FavoritePage(),
      //               ),
      //             );
      //           },
      //         ),
      //         GButton(
      //           icon: Icons.settings,
      //           text: 'Settings',
      //           onPressed: () {
      //             Navigator.push(
      //               context,
      //               MaterialPageRoute(
      //                 builder: (context) => SettingsPage(),
      //               ),
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
