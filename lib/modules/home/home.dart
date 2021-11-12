import 'package:flutter/material.dart';
import 'package:photoplat/modules/home/home_provider.dart';
import 'package:photoplat/modules/home/ui/home_ui.dart';
import 'package:provider/provider.dart';
import 'package:photoplat/common/injection/registery.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeProvider provider;
  @override
  void initState() {
    provider = registery.get<HomeProvider>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => provider,
      child: HomeUI(),
    );
  }
}
