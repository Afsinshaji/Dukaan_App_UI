
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order #1688068'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dateTime(),
              const Divider(),
              receiptRow(),
              const SizedBox(height: 10),
              orderedItems(),
              const Divider(),
              totalBill(),
              const Divider(),
              details(),
              const Divider(),
              additionalInformation(),
              shareButton()
            ],
          ),
        ),
      )),
    );
  }

  dateTime() {
    return const Row(children: [
      Text('May 31,05:42 PM'),
      SizedBox(
        width: 110,
      ),
      Icon(
        Icons.circle,
        color: Colors.blue,
        size: 14,
      ),
      SizedBox(
        width: 4,
      ),
      Text('Delivered'),
    ]);
  }

  receiptRow() {
    return const Row(children: [
      Text(
        '1 ITEM',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      SizedBox(
        width: 180,
      ),
      Icon(Icons.receipt_outlined, color: Colors.blue),
      Text(
        'RECEIPT',
        style: TextStyle(color: Colors.blue),
      ),
    ]);
  }

  // receiptTile() {
  //   return ListTile(
  //     title: Text('1 ITEM'),
  //     trailing: Row(
  //       children: [
  //         Icon(Icons.receipt_outlined, color: Colors.blue),
  //         Text(
  //           'RECEIPT',
  //           style: TextStyle(color: Colors.blue),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  orderedItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/navy_blue_plain_t-shirt_men_base_700x933.jpg',
          width: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Explore|Men|Navy Blue', style: TextStyle(fontSize: 18)),
            const SizedBox(
              height: 4,
            ),
            const Text('1 piece'),
            const Text('Size:XL'),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Card(
                  color: Colors.blue[100],
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(4)),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                    child: Text('1'),
                  ),
                ),
                const Text('X ₹799'),
                const SizedBox(
                  width: 150,
                ),
                const Text(' ₹799')
              ],
            ),
          ],
        )
      ],
    );
  }

  // orderedItem() {
  //   return ListTile(
  //     leading: Image.asset('assets/images/62b30f8cb223544c209f5e56.png'),
  //     title: Text('Explore|Men|Navy Blue'),
  //     subtitle: Column(children: [
  //       Text('1 piece'),
  //       Text('Size:XL'),
  //       Row(
  //         children: [
  //           Card(
  //             child: Text('1'),
  //             shape:
  //                 RoundedRectangleBorder(side: BorderSide(color: Colors.blue)),
  //           ),
  //           Text('X ₹799')
  //         ],
  //       )
  //     ]),
  //     trailing: Column(
  //       children: [
  //         SizedBox(
  //           height: 38,
  //         ),
  //         Text('₹799')
  //       ],
  //     ),
  //   );
  // }

  totalBill() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              'Item Total',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 200,
            ),
            Text(
              '₹799',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              'Delivery',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              width: 220,
            ),
            Text(
              'FREE',
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              'Grand Total',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 190,
            ),
            Text(
              '₹799',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }

  // totalbill() {
  //   return ListView(
  //     children: [
  //       ListTile(
  //         leading: Text('Item Total'),
  //         trailing: Text('₹799'),
  //       ),
  //       ListTile(
  //         leading: Text('Delivery'),
  //         trailing: Text(
  //           'FREE',
  //           style: TextStyle(color: Colors.green),
  //         ),
  //       ),
  //       ListTile(
  //         leading: Text('Grand Total'),
  //         trailing: Text('₹799'),
  //       )
  //     ],
  //   );
  // }
  details() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('CUSTOMER DETAILS'),
            SizedBox(
              width: 100,
            ),
            Icon(
              Icons.share_outlined,
              color: Colors.blue,
            ),
            Text(
              'SHARE',
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Deepa',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3,
                ),
                Text('+91-7829000484')
              ],
            ),
            const SizedBox(
              width: 100,
            ),
            Icon(
              Icons.phone_rounded,
              color: Colors.blue[900],
            ),
            const Icon(
              Icons.whatshot_outlined,
              color: Colors.green,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Address',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 3,
        ),
        const Text('''D 1101 Chartered Beverly
Hills,Subramanyapura P.O'''),
        const SizedBox(
          height: 10,
        ),
        const Row(
          children: [
            Text(
              'City',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 140,
            ),
            Text(
              'Pincode',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        const Row(
          children: [
            Text('Banglore'),
            SizedBox(
              width: 100,
            ),
            Text('560061')
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Payment',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Online'),
            // SizedBox(
            //   width: 100,
            // ),
            Card(
              color: Colors.green[100],
              shape:
                  const RoundedRectangleBorder(side: BorderSide(color: Colors.green)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  'PAID',
                  style: TextStyle(color: Colors.green[900]),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  additionalInformation() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('ADDITIONAL INFORMATION'),
        SizedBox(
          height: 10,
        ),
        Text(
          'State',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 3,
        ),
        Text('Karnataka'),
        SizedBox(
          height: 10,
        ),
        Text(
          'Email',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 3,
        ),
        Text('greeniceaqua@gmail.com'),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  shareButton() {
    return TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                side: const BorderSide(color: Color.fromARGB(255, 0, 117, 212)),
                borderRadius: BorderRadius.circular(10)))),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 110),
          child: Text(
            'Share receipt',
            style: TextStyle(color: Colors.blue[900]),
          ),
        ));
  }
}
