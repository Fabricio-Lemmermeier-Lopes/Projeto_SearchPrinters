enum Cor {
  colorido(label: 'Colorido'),
  pretobranco(label: 'Preto e branco');

  const Cor({
    required this.label,
  });

  final String label;
}
