// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gallery_app/components/bottomnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //container for welcome text
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15, top: 50),
              child: Text(
                "Welcome back",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 3,
          ),

          //container for gallery
          SizedBox(
            height: 650, // specify the height of the container
            child: MasonryGridView.builder(
              itemCount: 6,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('lib/assets/images/image${index + 1}.jpg'),
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: ButtomNavBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            //no action since we are on the home screen
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/favoritepage');
          } else if (index == 2) {
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
      //       tabs: [
      //         GButton(
      //           icon: Icons.home,
      //           text: 'Home',
      //           onPressed: (){
      //             Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage() ),);
      //           },
      //         ),
      //         GButton(
      //           icon: Icons.favorite_border,
      //           text: 'Favorite',
      //           onPressed: (){
      //             Navigator.push(context,  MaterialPageRoute(builder: (context) => FavoritePage() ),);
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
