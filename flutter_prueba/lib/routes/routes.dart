import 'package:flutter/material.dart';
import 'package:flutter_prueba/pages/card_page.dart';
import 'package:flutter_prueba/pages/information_card.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'cards': (_) => CardPage(),
  'information': (_) => InformationPage(),
};
