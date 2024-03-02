import 'package:flutter/material.dart';
import 'package:profit_margin/ui/style/colors.dart';
import 'package:profit_margin/ui/style/text_style.dart';
import 'package:profit_margin/ui/widgets/input_search_custom.dart';
import 'package:profit_margin/ui/widgets/input_type_filter_custom.dart';

class AppBarCustom extends AppBar {
  AppBarCustom({
    super.key,
  }) : super(
          elevation: 0,
          toolbarHeight: 94,
          leading: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: ColorsCustom.i.white,
              ),
              onPressed: null,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.start,
                "Pesquisar Item",
                style: TextStyles.i.textRegular
                    .copyWith(fontSize: 18, color: ColorsCustom.i.white),
              ),
              const InputSearchCustom(),
              const InputTypeFilterCustom(),
            ],
          ),
          // actions: <Widget>[
          //   Padding(
          //     padding: const EdgeInsets.only(right: 40),
          //     child: Image.asset(
          //       'assets/images/logo_bemol.png',
          //       width: 120,
          //       height: 52.09,
          //     ),
          //   ),
          // ],
        );
}
