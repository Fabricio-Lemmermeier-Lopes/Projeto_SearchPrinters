import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  final List<String> list;
  final String label;
  final TextEditingController controller;
  const CustomDropdownMenu({
    super.key,
    required this.list,
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      controller: controller,
      dropdownMenuEntries: list
          .map(
            (item) => DropdownMenuEntry(
              value: item,
              label: item,
            ),
          )
          .toList(),
      label: Text(label),
      initialSelection: list.first,
      width: MediaQuery.of(context).size.width - 32,
    );
  }
}
