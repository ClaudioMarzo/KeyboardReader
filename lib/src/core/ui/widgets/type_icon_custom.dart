import 'package:flutter/material.dart';
import 'package:profit_margin/src/core/ui/style/colors.dart';

class TypeIconCustom extends StatelessWidget {
  final IconType icon;
  final VoidCallback? onPressed;
  const TypeIconCustom(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 19.15,
      color: ColorsCustom.i.grey,
      onPressed: onPressed,
      icon: icon == IconType.busca
          ? const Icon(Icons.search)
          : const Icon(Icons.clear),
    );
  }
}

enum IconType { busca, limpeza }
