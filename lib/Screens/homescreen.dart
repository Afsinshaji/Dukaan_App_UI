import 'package:week_6_project/Payment/payments.dart';
import 'package:week_6_project/Screens/additional_information.dart';
import 'package:week_6_project/Screens/catalogue.dart';
import 'package:week_6_project/Screens/dukaanpremium.dart';
import 'package:week_6_project/Screens/manage_store.dart';
import 'package:week_6_project/Screens/orderscreen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> items = ['UI 1', 'UI 2', 'UI 3', 'UI 4', 'UI 5', 'UI 6'];
  List<Widget> UItitle = [
    const Additional(),
    const ManageStore(),
    const DukaanPremium(),
    const PaymentPage(),
    const Catalogue(),
    const OrderScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('UI Designs'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UItitle[index],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
