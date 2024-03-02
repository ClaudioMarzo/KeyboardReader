import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profit_margin/actions/app_actions.dart';
import 'package:profit_margin/ui/widgets/app_bar_custom.dart';
import 'package:profit_margin/ui/widgets/button_custom.dart';

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
            LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyD):
                ViewDetailsIntent(),
          },
          child: Actions(
            actions: <Type, Action<Intent>>{
              ConfirmProductAction: ConfirmProductAction(),
              ViewDetailsAction: ViewDetailsAction(),
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () => Actions.invoke(context, ViewDetailsIntent()),
                  child: const Text('Ver Detalhes'),
                ),
                // ButtonCustom(
                //   label: 'Confirmar produto',
                //   onPressed: () {
                //     Actions.invoke(context, ConfirmProductIntent());
                //   },
                // ),
                // const SizedBox(width: 20),
                // ButtonCustom(
                //   label: 'Mais detalhes',
                //   onPressed: () {
                //     Actions.invoke(context, ViewDetailsIntent());
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
