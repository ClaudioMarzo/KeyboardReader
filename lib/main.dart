import 'package:flutter/material.dart';
import 'package:profit_margin/ui/theme/theme_custom.dart';
import 'pages/search_product/search_product.dart';

void main() {
  runApp(const ProfitMarginApp());
}

class ProfitMarginApp extends StatelessWidget {
  const ProfitMarginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profit Margin',
      theme: ThemeConfig.theme,
      home: const SearchProduct(),
    );
  }
}
