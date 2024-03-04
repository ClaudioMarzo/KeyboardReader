import 'package:flutter/material.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:profit_margin/src/core/ui/style/colors.dart';
import 'package:profit_margin/src/core/ui/style/text_style.dart';
import 'package:profit_margin/src/core/ui/widgets/card_tite_custom.dart';

class ConnectedDevices extends StatefulWidget {
  const ConnectedDevices({super.key});

  @override
  State<ConnectedDevices> createState() => _ConnectedDevicesState();
}

class _ConnectedDevicesState extends State<ConnectedDevices> {
  var availablePorts = [];
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    initPorts();
  }

  void initPorts() {
    setState(() => availablePorts = SerialPort.availablePorts);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Visualizar dispositivos conectados. \nlib - flutter_libserialport',
          style: TextStyles.i.textRegular
              .copyWith(fontSize: 18, color: ColorsCustom.i.white),
        ),
      ),
      body: ListView(
        controller: _scrollController,
        children: [
          for (final address in availablePorts)
            Builder(builder: (context) {
              final port = SerialPort(address);
              return ExpansionTile(
                title: Text(address),
                children: [
                  CardTiteCustom(name: 'Description', value: port.description),
                  CardTiteCustom(
                      name: 'Transport', value: port.transport.toTransport()),
                  CardTiteCustom(
                      name: 'USB Bus', value: port.busNumber?.toPadded()),
                  CardTiteCustom(
                      name: 'USB Device', value: port.deviceNumber?.toPadded()),
                  CardTiteCustom(
                      name: 'Vendor ID', value: port.vendorId?.toHex()),
                  CardTiteCustom(
                      name: 'Product ID', value: port.productId?.toHex()),
                  CardTiteCustom(
                      name: 'Manufacturer', value: port.manufacturer),
                  CardTiteCustom(name: 'Product Name', value: port.productName),
                  CardTiteCustom(
                      name: 'Serial Number', value: port.serialNumber),
                  CardTiteCustom(name: 'MAC Address', value: port.macAddress),
                ],
              );
            }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: initPorts,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

extension IntToString on int {
  String toHex() => '0x${toRadixString(16)}';
  String toPadded([int width = 3]) => toString().padLeft(width, '0');
  String toTransport() {
    switch (this) {
      case SerialPortTransport.usb:
        return 'USB';
      case SerialPortTransport.bluetooth:
        return 'Bluetooth';
      case SerialPortTransport.native:
        return 'Native';
      default:
        return 'Unknown';
    }
  }
}
