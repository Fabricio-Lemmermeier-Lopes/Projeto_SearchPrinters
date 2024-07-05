import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:search_printers/screens/printers/printer_1.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'printer_1'),

      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width - 350,
        padding: const EdgeInsets.all(8.0),
        child: const Card(
          margin: EdgeInsets.all(8.0),
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:<Widget>[
              Text(
                'HP Ink Advantage 2874',
                style: TextStyle(
                  fontSize: 18,
                  height: 3,
                ),
                textAlign: TextAlign.center,
              ),
              
            ],
          ),
        ),
      ),
  );
}