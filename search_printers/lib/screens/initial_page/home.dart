import 'package:flutter/material.dart';
import 'package:search_printers/screens/initial_page/componets/cards.dart';
//import 'package:search_printers/screens/printers/printer_1.dart';
import 'package:search_printers/shared/customappbarhome.dart';

class Home extends StatelessWidget{
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarHome('SearchPrinters', context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'register');
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) => const Cards(
                    ),
                  ),
                ),
              ],
            ),
          
      ),
      
      /*
        child: Column(
          children: [
            
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index),
                
                ),
              ),
          ],
        ),
        */
      
      
    );
  }
}
  

  
  
  

 
