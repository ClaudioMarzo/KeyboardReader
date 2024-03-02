import 'package:flutter/material.dart';
import 'package:profit_margin/ui/style/colors.dart';

class TypeIconCustom extends StatelessWidget {
  final int icon;
  final VoidCallback? onPressed;
  const TypeIconCustom(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      color: ColorsCustom.i.grey,
      onPressed: onPressed,
      icon: icon == 1 ? const Icon(Icons.search) : const Icon(Icons.clear),
    );
  }
}
