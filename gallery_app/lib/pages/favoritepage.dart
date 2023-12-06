// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gallery_app/components/bottomnavbar.dart';

// import 'package:gallery_app/pages/homepage.dart';
// import 'package:gallery_app/pages/settingspage.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("F A V O R I T E"),
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
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/homepage');
          } else if (index == 1){
            //no need since we are on the favorites page
          } else if (index == 2){
            Navigator.pushReplacementNamed(context, '/settingspage');
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
      //       tabs:  [
      //         GButton(
      //           icon: Icons.home,
      //           text: 'Home',
      //           onPressed: (){
      //             Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage() ));
      //           },
      //         ),
      //         GButton(
      //           icon: Icons.favorite_border,
      //           text: 'Favorite',
      //           onPressed: (){
      //             Navigator.push(context,  MaterialPageRoute(builder: (context) => FavoritePage() ));
      //           },
      //         ),
      //         GButton(
      //           icon: Icons.settings,
      //           text: 'Settings',
      //           onPressed: (){
      //             Navigator.push(context,  MaterialPageRoute(builder: (context) => SettingsPage() ));
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
