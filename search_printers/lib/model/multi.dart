enum Multi {
  nao(label: 'Não'),
  sim(label: 'Sim');

  const Multi({
    required this.label,
  });

  final String label;
}
