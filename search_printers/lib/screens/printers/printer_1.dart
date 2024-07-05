import 'package:flutter/material.dart';
import 'package:search_printers/model/printer.dart';
import 'package:search_printers/shared/customappbar.dart';

class Printer1 extends StatefulWidget{
  const Printer1({super.key});

  
@override
  State<Printer1> createState() => _Printer1State();
}

class _Printer1State extends State<Printer1>{

  Printer printer = Printer(color: true);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('SearchPrinters'),
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            const Text('HP Ink Advantage 2874', style: TextStyle(fontSize: 20),),
            Image.asset('assets/hp_2874.png'),
            const SizedBox(height: 50),
            const Text('Multifuncional: Sim'),
            const Text('Cor: Colorido'),
            const Text('Velocidade branco e preto: Até 7,5 ppm'),
            const Text('Velocidade colorido: Até 5,5 ppm'),
            const Text('Funções: Impressão, cópia, digitalização'),
            const Text('Alimentação: Tensão de entrada: 100V a 240V'),
            const Text('Qualidade De Impressão Preto: Até 1200 x 1200 dpi'),
            const Text('Qualidade De Impressão Colorida: 4800 x 1200 dpi'),
          ],
        )
      ), 
    );
  }
}