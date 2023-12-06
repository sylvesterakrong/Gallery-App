import 'package:flutter/material.dart';
import 'package:gallery_app/pages/favoritepage.dart';
import 'package:gallery_app/pages/homepage.dart';
import 'package:gallery_app/pages/settingspage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),

      initialRoute: '/homepage', // This trailing comma makes auto-formatting nicer for build methods.
      routes: {
        '/homepage' : (context) => const HomePage(),
        '/favoritepage' : (context) => const FavoritePage(),
        '/settingspage' : (context) => const SettingsPage(),
      },
    );
  }
}
