import 'package:flutter/material.dart';
import 'package:week_6_project/Screens/cataloguelist.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({super.key});
  final upperTab = const TabBar(tabs: <Tab>[
    Tab(
      icon: Text(
        'Products',
      ),
    ),
    Tab(
      icon: Text('Categories'),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          shadowColor: Colors.blue[50],
          title: const Text('Dukaan Premium'),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
          bottom: upperTab,
        ),
        body: CatalogueList(),
      ),
    );
  }
}
