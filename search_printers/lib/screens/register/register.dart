import 'package:flutter/material.dart';
import 'package:search_printers/model/cor.dart';
import 'package:search_printers/model/multi.dart';
import 'package:search_printers/shared/customappbar.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
  
}



class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final _color = Cor.values.map((item) => item.label).toList();
  final _multi = Multi.values.map((item) => item.label).toList();
  final _nameController = TextEditingController();
  final _marcaController = TextEditingController();
  final _velipController = TextEditingController();
  final _velicController = TextEditingController();
  final _funcoesController = TextEditingController();
  final _alimentacaoController = TextEditingController();
  final _qualipController = TextEditingController();
  final _qualicController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Registrar'),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            save();
          }
        },
        child: const Icon(Icons.check),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value){
                      if(value == null){
                        return 'Nome inválido';
                      }else{
                        return null;
                      }
                    },
                      decoration: InputDecoration(
                      labelText: 'Nome da Impressora',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                    labelText: 'Marca',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                    labelText: 'Multifuncional (Sim ou não)',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                    labelText: 'Cor (Preto e branco ou colorido)',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                    labelText: 'Velocidade de Impressão Preto',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                    labelText: 'Velocidade de Impressão Colorido',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                    labelText: 'Funções',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                    labelText: 'Alimentação',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                    labelText: 'Qualidade de Impressão Preto',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                    labelText: 'Qualidade de Impressão Colorido',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),      
      ),
    );
  }
}