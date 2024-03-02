import 'package:flutter/material.dart';
import 'package:profit_margin/ui/style/colors.dart';
import 'package:profit_margin/ui/style/text_style.dart';
import 'package:profit_margin/ui/widgets/input_search_custom.dart';
import 'package:profit_margin/ui/widgets/input_type_filter_custom.dart';

class AppBarCustom extends AppBar {
  AppBarCustom({
    super.key,
  }) : super(
          leading: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: ColorsCustom.i.white,
                  ),
                  onPressed: null,
                ),
                Container(
                  child: Expanded(
                    child: Text(
                      "Pesquisa Item",
                      style: TextStyles.i.textRegular
                          .copyWith(fontSize: 18, color: ColorsCustom.i.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          title: const InputSearchCustom(),
          actions: <Widget>[
            const InputTypeFilterCustom(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/logo_bemol.png',
                fit: BoxFit.cover,
                width: 120,
                height: 52.09,
              ),
            ),
          ],
        );
}
