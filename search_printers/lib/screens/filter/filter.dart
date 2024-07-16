
import 'package:flutter/material.dart';
import 'package:search_printers/shared/customappbarfilter.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarFilter('SearchPrinters'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'filter');
        },
        child: const Icon(Icons.save),
      ),
    );

  }
}