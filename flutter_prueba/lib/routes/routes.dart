import 'package:flutter/material.dart';
import 'package:flutter_prueba/pages/card_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': (_) => CardPage(),
};
