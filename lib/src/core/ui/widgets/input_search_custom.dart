import 'package:flutter/material.dart';
import 'package:profit_margin/src/core/ui/style/colors.dart';
import 'package:profit_margin/src/core/ui/style/text_style.dart';
import 'package:profit_margin/src/core/ui/widgets/type_icon_custom.dart';

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
      height: 47,
      width: 678,
      child: TextField(
        controller: _queryTextController,
        autofocus: true,
        cursorColor: ColorsCustom.i.red,
        onTap: () => FocusScope.of(context).unfocus(),
        onChanged: (value) {},
        style: TextStyle(color: ColorsCustom.i.black),
        decoration: InputDecoration(
          hintStyle: TextStyles.i.textRegular
              .copyWith(fontSize: 14, color: ColorsCustom.i.grey),
          filled: true,
          fillColor: ColorsCustom.i.white,
          hintText: 'Busque por Descrição ou Código Bemol',
          suffixIcon: TypeIconCustom(
            icon: IconType.busca,
            onPressed: () {
              FocusScope.of(context).unfocus();
            },
          ),
        ),
      ),
    );
  }
}
