import 'package:flutter/material.dart';
import 'package:search_printers/model/cor.dart';
import 'package:search_printers/model/multi.dart';
import 'package:search_printers/model/printer.dart';
import 'package:search_printers/repository/printer_repository.dart';
import 'package:search_printers/shared/custom_dropdown_menu.dart';
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
  final _colorController = TextEditingController();
  final _multiController = TextEditingController();
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
                    validator: (value) => value!.length < 6  ? 'Nome inválido' : null, 
                    controller: _nameController,
                      decoration: InputDecoration(
                      labelText: 'Nome da Impressora',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) => value!.length != 2  ? 'Marca inválida' : null,
                    controller: _marcaController,
                    decoration: InputDecoration(
                    labelText: 'Marca',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                const SizedBox(height: 16),
                CustomDropdownMenu(
                  list: _multi,
                  label: 'Multifuncional',
                  controller: _multiController,
              ),

                
              const SizedBox(height: 16),
                CustomDropdownMenu(
                  list: _color,
                  label: 'Cor',
                  controller: _colorController,
              ),
                

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) => value!.length != 6  ? 'Velocidade inválida' : null,
                    controller: _velipController,
                    decoration: InputDecoration(
                    labelText: 'Velocidade de Impressão Preto (Ex: 40 ppm)',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _velicController,
                    decoration: InputDecoration(
                    labelText: 'Velocidade de Impressão Colorido',
                    border: const OutlineInputBorder(),
                    ),
                    
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _funcoesController,
                    decoration: InputDecoration(
                    labelText: 'Funções',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _alimentacaoController,
                    decoration: InputDecoration(
                    labelText: 'Alimentação',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) => value!.length != 7  ? 'Qualidade inválida' : null,
                    controller: _qualipController,
                    decoration: InputDecoration(
                    labelText: 'Qualidade de Impressão Preto (Ex: 720x720)',
                    border: const OutlineInputBorder(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _qualicController,
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

  void save() async {
    try {
      final printer = Printer(
        name: _nameController.text,
        marca: _marcaController.text,
        color: (_colorController.text == "Colorido")
            ? Cor.colorido
            : Cor.pretobranco,
        multi: (_multiController.text == "Sim")
            ? Multi.sim
            : Multi.nao,
        velip: _velipController.text,
        velic: _velicController.text,
        funcoes: _funcoesController.text,
        alimentacao: _alimentacaoController.text,
        qualip: _qualipController.text,
        qualic: _qualicController.text,
      );    
      final id = await PrinterRepository.insert(printer);
      SnackBar snackBar;
      if (id != 0) {
        snackBar =
            SnackBar(content: Text('A impressora ${id} foi salvo com sucesso!!!'));
      } else {
        snackBar = SnackBar(
          content:
              Text('Lamento, houve um problema ao tentar salvar a sua impressora!!!'),
        );
      }
      // Exibir a SnackBar
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (error) {
      SnackBar snackBar = const SnackBar(
        content: Text('Ops. Tivemos um problema técnico!!!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

}