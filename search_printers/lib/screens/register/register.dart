import 'package:flutter/material.dart';
import 'package:search_printers/shared/customappbar.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Registrar'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'home');
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: [
              
              Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => 
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Nome da Impressora',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
                  
                  Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => 
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Marca',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
                  
                  Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => 
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Multifuncional',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
                  
                  Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => 
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Cor',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
                  
                  Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => 
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Velocidade de Impressão Preto',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
                 
                  Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => 
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Velocidade de Impressão Colorido',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
                  
                  Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => 
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Funções',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
                  
                  Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => 
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Alimentação',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
                  
                  Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => 
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Qualidade de Impressão Preto',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
                 
                  Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) => 
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Velocidade de Impressão Colorido',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),      
      ),
    );
  }
}