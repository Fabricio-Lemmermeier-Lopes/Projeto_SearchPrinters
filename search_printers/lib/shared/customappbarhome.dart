
import 'package:flutter/material.dart';

AppBar customAppBarHome(String title) {
  return AppBar(
    title: Text(title),
    actions: [
      
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
        tooltip: 'Pesquisar',
      ),
      
    ],
  );
}