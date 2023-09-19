import 'package:flutter/material.dart';

class ManageStore extends StatefulWidget {
  const ManageStore({super.key});

  @override
  State<ManageStore> createState() => _ManageStoreState();
}

class _ManageStoreState extends State<ManageStore> {
  int myindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Manage Store')),
        body: StoreList(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: myindex,
          items: items(),
        ));
  }
}

StoreList() {
  return SafeArea(
    child: Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cards(
                head: '''Marketing Designs''',
                icon: const Icon(
                  (Icons.volume_up_outlined),
                ),
                color: Colors.orange,
              ),
              cards(
                  head: '''Online   Payments''',
                  icon: const Icon((Icons.currency_rupee_rounded)),
                  color: Colors.green),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cards(
                head: '''Discount Coupons''',
                icon: const Icon(
                  (Icons.discount_outlined),
                ),
                color: Colors.yellow,
              ),
              cards(
                  head: '''My  Customers''',
                  icon: const Icon((Icons.people_alt_outlined)),
                  color: const Color.fromARGB(255, 12, 168, 17)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cards(
                head: '''Store QR Code''',
                icon: const Icon((Icons.qr_code_scanner_outlined)),
                color: Colors.grey,
              ),
              cards(
                  head: '''Extra Charges''',
                  icon: const Icon((Icons.currency_exchange)),
                  color: Colors.purple),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 12,
              ),
              //     cards(
              //       head: '''Order Form''',
              //       icon: Icon(
              //         (Icons.format_align_left_outlined),
              //       ),
              //       color: Colors.pink,
              //     ),
              Flexible(
                flex: 3,
                child: Card(
                  color: Colors.white,
                  semanticContainer: false,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Card(
                                color: Colors.pink,
                                child: IconButton(
                                  onPressed: () {},
                                  icon:
                                      const Icon((Icons.format_align_left_outlined)),
                                  iconSize: 30,
                                ),
                              ),
                            ),
                            const Card(
                              color: Colors.green,
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                child: Text(
                                  'NEW',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                          width: 140,
                          child: Text(
                            '''Order Form''',
                            style: TextStyle(
                              fontSize: 18,
                              // overflow: TextOverflow.ellipsis,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 180,
              )
            ],
          ),
        ],
      ),
    ),
  );
}

// marketingDesignCard() {
//   cards(
//     head: '''Marketing Designs''',
//     icon:  Icon(
//       (Icons.volume_up_outlined),
//       color: Colors.orange,
//     ),
//   );
// }

IconData? icon;
cards(
    {required String head,
    Icon icon = const Icon(Icons.add),
    Color color = (Colors.black)}) {
  String? head0 = head;
  Icon icons = icon;
  Color color0 = color;
  return Flexible(
    flex: 3,
    child: Card(
      semanticContainer: false,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: color0,
              child: IconButton(
                onPressed: () {},
                icon: icons,
                iconSize: 30,
              ),
            ),
            SizedBox(
              height: 50,
              width: 140,
              child: Text(
                head0,
                style: const TextStyle(
                  fontSize: 18,
                  // overflow: TextOverflow.ellipsis,
                ),
                textAlign: TextAlign.start,
              ),
            )
          ],
        ),
      ),
    ),
  );
}

items() {
  return const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: ('Home'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.currency_rupee),
      label: ('Orders'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.grid_view),
      label: ('Products'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.layers_rounded),
      label: ('Manage'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: ('Account'),
    ),
  ];
}




// bottomNavigation(){






//   return BottomNavigationBar(
//         onTap: (index) {
//           setState(() {
//             myindex = index;
//           });
//         },
//         selectedLabelStyle: GoogleFonts.poppins(),
//         type: BottomNavigationBarType.fixed,
//         currentIndex: myindex,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: ('Home'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.currency_rupee),
//             label: ('Orders'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.grid_view),
//             label: ('Products'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.layers_rounded),
//             label: ('Manage'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: ('Account'),
//           ),
//         ],
//       );
// }
