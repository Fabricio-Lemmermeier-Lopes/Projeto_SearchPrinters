
import 'package:flutter/material.dart';
import 'package:search_printers/shared/customappbarfilter.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool ckfilter = true;
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: customAppBarFilter('Filter'),
      
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text('Marca', textAlign: TextAlign.center,),
            Row(
              children: [
               // Padding(
                //  padding: EdgeInsets.only(left: 10, right: 370, bottom: 24),
                  //child: 
                  Text('HP'),
                  /*
                 Checkbox(
                  value: ckfilter, 
                  onChanged: (checked){
                    setState(() {
                      ckfilter = checked;
                    });
                  },
                 ),
                 */
                //),
              ],
            ),
            Text('Multifuncional'),
            Text('Cor'),
            Text('Velocidade preto e branco'),
            Text('Velocidade colorida'),
            Text('Funções'),
            Text('Alimentação'),
            Text('Qualidade de impressão preto e branco'),
            Text('Qualidade de impressão colorida'),
          ],
        ),
      ),
    );

  }
}