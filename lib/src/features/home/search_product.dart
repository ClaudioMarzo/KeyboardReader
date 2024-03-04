import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profit_margin/src/core/actions/app_actions.dart';
import 'package:profit_margin/src/core/ui/widgets/app_bar_custom.dart';
import 'package:profit_margin/src/core/ui/widgets/button_custom.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({super.key});

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(),
      body: Center(
        child: Shortcuts(
          shortcuts: <LogicalKeySet, Intent>{
            LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyP):
                ConfirmProductIntent(),
            LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyI):
                ViewDetailsIntent(),
            LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyD):
                ConnectedDevicesIntent(),
            LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyU):
                InteractsSerialPortsIntent(),
          },
          child: Actions(
            actions: <Type, Action<Intent>>{
              ConfirmProductIntent: ConfirmProductAction(),
              ViewDetailsIntent: ViewDetailsAction(),
              ConnectedDevicesIntent: ConnectedDevicesAction(context),
              InteractsSerialPortsIntent: InteractsSerialPortsAction(context),
            },
            child: Focus(
              autofocus: true,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ButtonCustom(
                    label: 'Confirmar produto \nCTRL + P',
                    onPressed: () {
                      print('Botão confirmar produto');
                    },
                  ),
                  const SizedBox(width: 20),
                  ButtonCustom(
                    label: 'Mais informações\nCTRL + I',
                    onPressed: () {
                      print('Botão mais detalhes');
                    },
                  ),
                  const SizedBox(width: 20),
                  ButtonCustom(
                    label: 'Dispositivos conectados\nCTRL + D',
                    onPressed: () {
                      print('Botão dispositivos conectados');
                      Navigator.of(context).pushReplacementNamed('/devices');
                    },
                  ),
                  const SizedBox(width: 20),
                  ButtonCustom(
                    label: 'Interage com portas seriais\nCTRL + U',
                    onPressed: () {
                      print('Botão portas seriais');
                      Navigator.of(context)
                          .pushReplacementNamed('/serial_ports');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
