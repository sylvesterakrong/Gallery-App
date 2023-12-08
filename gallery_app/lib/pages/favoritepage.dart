// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gallery_app/components/bottomnavbar.dart';

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
          Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/splash.jpg"),
            fit: BoxFit.fill,
          ),
        ),
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


    );
  }
}
