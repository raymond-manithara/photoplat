import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photoplat/modules/home/home.dart';
import 'package:photoplat/modules/error/error.dart';

class RouteGenerator {
  static Route<dynamic> ongenerateRoute(RouteSettings _settings) {
    switch (_settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => Home());
        break;
      default:
        return MaterialPageRoute(builder: (context) => Error());
    }
  }
}
