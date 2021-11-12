import 'package:flutter/material.dart';
import 'package:photoplat/common/injection/registery.dart' as di;
import 'package:photoplat/utils/route_generator/generator.dart';

void main() {
  di.performInjection();
  runApp(PhotoPlatApp());
}

class PhotoPlatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PhotoPlat Platform',
      theme: ThemeData(primarySwatch: Colors.red, accentColor: Colors.white),
      onGenerateRoute: RouteGenerator.ongenerateRoute,
    );
  }
}
