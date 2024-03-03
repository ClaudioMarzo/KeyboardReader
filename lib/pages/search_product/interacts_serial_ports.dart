import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:profit_margin/ui/style/colors.dart';
import 'package:profit_margin/ui/style/text_style.dart';
import 'package:profit_margin/ui/widgets/button_custom.dart';
import 'package:serial_port_win32/serial_port_win32.dart';

class InteractsSerialPorts extends StatefulWidget {
  const InteractsSerialPorts({super.key});

  @override
  State<InteractsSerialPorts> createState() => _InteractsSerialPortsState();
}

class _InteractsSerialPortsState extends State<InteractsSerialPorts> {
  var ports = <String>[];
  late SerialPort port;
  final sendData = Uint8List.fromList(List.filled(4, 1, growable: false));
  String data = '';

  void _getPortsAndOpen() {
    final List<PortInfo> portInfoLists = SerialPort.getPortsWithFullMessages();
    ports = SerialPort.getAvailablePorts();

    print(portInfoLists);
    print(ports);
    if (ports.isNotEmpty) {
      port = SerialPort("COM5",
          openNow: false, ReadIntervalTimeout: 1, ReadTotalTimeoutConstant: 2);
      port.open();
      // print(port.isOpened);
      // port.readBytesOnListen(16, (value) {
      //   data = String.fromCharCodes(value);
      //   print(DateTime.now());
      //   print(data);
      //   setState(() {});
      // });
      //
      // port.readBytesOnListen(16, (value) {
      //   data = String.fromCharCodes(value);
      //   print(DateTime.now());
      //   print(data);
      //   setState(() {});
      // });
    }
    setState(() {});
  }

  void _send() async {
    try {
      // print(sendData);
      var bytesWritten = port.writeBytesFromString("AT");
      print("Bytes escritos: $bytesWritten");
      Uint8List response =
          await port.readBytesUntil(Uint8List.fromList("\n".codeUnits));
      print("Resposta: ${String.fromCharCodes(response)}");
      // var data = await port.readBytesOnce(10);
      // print(data);
    } catch (e) {
      print("Erro ao escrever ou ler da porta serial: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          "Conectar dispositivos por porta serial. \nlib - serial_port_win32",
          style: TextStyles.i.textRegular
              .copyWith(fontSize: 18, color: ColorsCustom.i.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Você apertou o botão tantas vezes:',
            ),
            Text(
              ports.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(data),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonCustom(
                  label: "FECHAR",
                  onPressed: () {
                    port.close();
                  },
                ),
                const SizedBox(width: 20),
                ButtonCustom(
                  label: "ESCREVER",
                  onPressed: () {
                    _send();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getPortsAndOpen,
        tooltip: 'GetPorts',
        child: const Icon(Icons.search),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
