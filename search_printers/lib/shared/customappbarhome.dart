
import 'package:flutter/material.dart';


AppBar customAppBarHome(String title, BuildContext context) {
  return AppBar(
    title: Text(title),
    actions: [
      
      IconButton(
        onPressed: () {
          Navigator.pushNamed(context, 'filter');
        },
        icon: const Icon(Icons.filter_list),
        tooltip: 'Filtrar',
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
        tooltip: 'Pesquisar',
      ),
      
      
    ],
  );
}