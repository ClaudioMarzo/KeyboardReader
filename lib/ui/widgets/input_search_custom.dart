import 'package:flutter/material.dart';
import 'package:profit_margin/ui/style/colors.dart';
import 'package:profit_margin/ui/style/text_style.dart';
import 'package:profit_margin/ui/widgets/type_icon_custom.dart';

class InputSearchCustom extends StatefulWidget {
  const InputSearchCustom({super.key});

  @override
  State<InputSearchCustom> createState() => _InputSearchState();
}

class _InputSearchState extends State<InputSearchCustom> {
  final TextEditingController _queryTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextField(
        controller: _queryTextController,
        autofocus: true,
        cursorColor: Colors.blue,
        onTap: () => FocusScope.of(context).unfocus(),
        onChanged: (value) {},
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintStyle: TextStyles.i.textRegular,
          filled: true,
          fillColor: Colors.white,
          hintText: 'Busque por Descrição ou Código Bemol',
          suffixIcon: TypeIconCustom(
            icon: 1,
            onPressed: () {
              FocusScope.of(context).unfocus();
            },
          ),
        ),
      ),
    );
  }
}
