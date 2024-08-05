import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_printers/repository/printer_repository.dart';
import 'package:search_printers/screens/initial_page/componets/cards.dart';
import 'package:search_printers/shared/customappbarhome.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      body: buildScreen(),
    );
  }
  Widget buildScreen() {
    var listOfPrinter = [];
    return FutureBuilder(
      future: PrinterRepository.findAll(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.none) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text('Não existem Impressoras cadastradas'),
                ),
                TextButton(
                  onPressed: () async {
                    listOfPrinter = await PrinterRepository.findAll();
                    setState(() {});
                  },
                  child: const Text("Atualizar"),
                )
              ],
            );
          }
          listOfPrinter = snapshot.data!;
          return RefreshIndicator(
            onRefresh: () async {
              listOfPrinter = await PrinterRepository.findAll();
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: listOfPrinter.length,
                      itemBuilder: (context, index) => Cards(
                        printer: listOfPrinter[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}
  
