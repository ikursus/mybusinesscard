import 'package:flutter/material.dart';
import 'package:mybusinesscard/mycard.dart';
import 'package:mybusinesscard/biodata.dart';
import 'package:mybusinesscard/hubungi.dart';

void main() {
  runApp(const MyHome());
}

// Fungsi menyediakan environment bagi MaterialApp
class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const MyCard(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/biodata': (context) => const BiodataSaya(),
        '/hubungi': (context) => const HubungiSaya(),
      },
      debugShowCheckedModeBanner: false,
      // home: const MyCard(),// disabled home property apabila guna initialRoute
    );
  }
}
