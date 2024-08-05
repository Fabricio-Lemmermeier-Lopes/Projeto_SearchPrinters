import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:search_printers/model/printer.dart';



class Cards extends StatelessWidget {
  final Printer printer;
  const Cards({
    super.key,
    required this.printer,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.pushNamed(context, ''),

      child: Container(
        height: 90,
        width: MediaQuery.of(context).size.width - 350,
        padding: const EdgeInsets.all(8.0),
        child: const Card(
          margin: EdgeInsets.all(8.0),
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Hp 432',
                style: TextStyle(
                  fontSize: 20,
                  height: 2.90
                )
              )
              
            ],
          ),
        ),
      ),
  );
  }
}