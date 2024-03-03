// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardTiteCustom extends StatelessWidget {
  final String name;
  final String? value;
  const CardTiteCustom({
    super.key,
    required this.name,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(value ?? 'N/A'),
        subtitle: Text(name),
      ),
    );
  }
}
