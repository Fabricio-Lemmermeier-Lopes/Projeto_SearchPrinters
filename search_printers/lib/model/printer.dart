import 'package:search_printers/model/cor.dart';
import 'package:search_printers/model/multi.dart';

class Printer {
  String name;
  String marca;
  Cor color;
  Multi multi;
  String velip;
  String? velic;
  String funcoes;
  String alimentacao;
  String qualip;
  String? qualic;


  Printer({
    required this.color,
    required this.marca,
    required this.name,
    required this.multi,
    required this.velip,
    this.velic,
    required this.funcoes,
    required this.alimentacao,
    required this.qualip,
    this.qualic,
  });

  Map<String, Object?> toMap() => {
        'color': color.name,
        'marca': marca,
        'name': name,
        'multi': multi.name,
        'velip': velip,
        'velic': velic,
        'funcoes': funcoes,
        'alimentacao': alimentacao,
        'qualip': qualip,
        'qualic': qualic,
      };

  factory Printer.fromMap(Map<String, Object?> map) => Printer(
        color: (map['color'] == 'colorido')
            ? Cor.colorido
            : Cor.pretobranco,
        name: map['name'] as String,
        marca: map['marca'] as String,
        multi: (map['multi'] == 'sim')
            ? Multi.sim
            : Multi.nao,
        velip: map['velip'] as String,
        velic: map['velic'] as String,
        funcoes: map['funcoes'] as String,
        alimentacao: map['alimentacao'] as String,
        qualip: map['qualip'] as String,
        qualic: map['qualic'] as String,
        
      );

  
}