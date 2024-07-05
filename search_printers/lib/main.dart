import 'package:flutter/material.dart';
import 'package:search_printers/screens/initial_page/home.dart';
import 'package:search_printers/screens/printers/printer_1.dart';


void main() {
  runApp(
    MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Home(),
      initialRoute: 'home',
      routes: {
        'home': (context) => Home(),
        'printer_1': (context) => Printer1(),
      },
    ),
  );
}


