import 'package:flutter/material.dart';
//import 'package:search_printers/screens/filter/filter.dart';
import 'package:search_printers/screens/initial_page/home.dart';
import 'package:search_printers/screens/printers/printer_1.dart';
import 'package:search_printers/screens/register/register.dart';


void main() {
  runApp(
    MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Home(),
      initialRoute: 'home',
      routes: {
        'home': (context) => Home(),
        //'printer_1': (context) => Printer1(),
        //'filter': (context) => Filter(),
        'register': (context) => Register(),
      },

       theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
       ),
       
    ),
  );
}


