import 'package:flutter/material.dart';
import 'package:photoplat/modules/home/home_provider.dart';
import 'package:provider/provider.dart';

class HomeUI extends StatefulWidget {
  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  @override
  void initState() {
    Future.microtask(() async {
      await context.read<HomeProvider>().dowloadFromApi();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Theme.of(context).accentColor,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () {
                  bool _visibility =
                      context.read<HomeProvider>().isSearchVisible;
                  context
                      .read<HomeProvider>()
                      .onClickSearchVisible(!_visibility);
                },
                icon: Icon(
                  context.select(
                          (HomeProvider provider) => provider.isSearchVisible)
                      ? Icons.search_off
                      : Icons.search,
                  color: Theme.of(context).accentColor,
                )),
          )
        ],
        title: Text('PhotoPlat'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              context.select(
                      (HomeProvider provider) => provider.isSearchVisible)
                  ? TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      controller: context.select(
                          (HomeProvider provider) => provider.searchController),
                    )
                  : Container(
                      child: Center(
                        child: Text(
                          'Click search icon to start a search.',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
