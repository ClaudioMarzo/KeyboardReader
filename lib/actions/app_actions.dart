import 'package:flutter/material.dart';
import 'package:profit_margin/pages/search_product/connected_devices.dart';
import 'package:profit_margin/pages/search_product/interacts_serial_ports.dart';

class ConfirmProductIntent extends Intent {}

class ViewDetailsIntent extends Intent {}

class ConnectedDevicesIntent extends Intent {}

class InteractsSerialPortsIntent extends Intent {}

class ConfirmProductAction extends Action<ConfirmProductIntent> {
  @override
  void invoke(covariant ConfirmProductIntent intent) {
    print('Atalho Produto confirmado');
  }
}

class ViewDetailsAction extends Action<ViewDetailsIntent> {
  @override
  void invoke(covariant ViewDetailsIntent intent) {
    print('Atalho Detalhes do produto visualizados');
  }
}

class ConnectedDevicesAction extends Action<ConnectedDevicesIntent> {
  final BuildContext context;
  ConnectedDevicesAction(this.context);
  @override
  void invoke(covariant ConnectedDevicesIntent intent) {
    print('Atalho dispositivos conectados');
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ConnectedDevices()),
    );
  }
}

class InteractsSerialPortsAction extends Action<InteractsSerialPortsIntent> {
  final BuildContext context;
  InteractsSerialPortsAction(this.context);

  @override
  void invoke(covariant InteractsSerialPortsIntent intent) {
    print('Atalho interagir com portas seriais');
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const InteractsSerialPorts()),
    );
  }
}
