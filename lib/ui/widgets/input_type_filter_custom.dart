import 'package:flutter/material.dart';
import 'package:profit_margin/ui/style/colors.dart';
import 'package:profit_margin/ui/style/text_style.dart';

class InputTypeFilterCustom extends StatefulWidget {
  const InputTypeFilterCustom({super.key});

  @override
  State<InputTypeFilterCustom> createState() => _InputTypeFilterCustomState();
}

class _InputTypeFilterCustomState extends State<InputTypeFilterCustom> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 277,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownMenu<String>(
        hintText: 'Filtrar por',
        trailingIcon: const Icon(Icons.arrow_drop_down_sharp),
        onSelected: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        dropdownMenuEntries: list.map<DropdownMenuEntry<String>>(
          (String value) {
            return DropdownMenuEntry<String>(
              value: value,
              label: value,
              // style: ButtonStyle()
            );
          },
        ).toList(),
      ),
    );
  }
}

const List<String> list = <String>[
  'Ordem alfabética',
  'Menor preço para maior preço',
  'Maior preço para maior preço',
  'Produtos inativos'
];
