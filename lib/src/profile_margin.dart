import 'package:flutter/material.dart';
import 'package:profit_margin/src/features/devices/connected_devices.dart';
import 'package:profit_margin/src/features/serial/interacts_serial_ports.dart';
import 'package:profit_margin/src/core/ui/theme/theme_custom.dart';
import 'package:profit_margin/src/features/home/search_product.dart';

class ProfitMarginApp extends StatelessWidget {
  const ProfitMarginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profit Margin',
      theme: ThemeConfig.theme,
      initialRoute: '/',
      routes: {
        '/': (_) => const SearchProduct(),
        '/devices': (_) => const ConnectedDevices(),
        '/serial_ports': (_) => const InteractsSerialPorts(),
      },
    );
  }
}
