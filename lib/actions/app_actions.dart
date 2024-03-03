import 'package:flutter/material.dart';

class ConfirmProductIntent extends Intent {}

class ViewDetailsIntent extends Intent {}

class ConfirmProductAction extends Action<ConfirmProductIntent> {
  @override
  void invoke(covariant ConfirmProductIntent intent) {
    print('Produto confirmado');
  }
}

class ViewDetailsAction extends Action<ViewDetailsIntent> {
  @override
  void invoke(covariant ViewDetailsIntent intent) {
    print('Detalhes do produto visualizados');
  }
}
