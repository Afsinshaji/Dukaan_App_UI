import 'package:flutter/material.dart';
import 'package:week_6_project/Payment/paymentslist.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payments'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            transactionLimit(),
            dropDownButtons(),
            transactions(),
            PaymentList(),
          ],
        ),
      )),
    );
  }

  transactionLimit() {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Transaction Limit',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('''A free limit up to which you will recieve  
the online payments directly in your bank'''),
              const SizedBox(
                height: 10,
              ),
              const LinearProgressIndicator(
                semanticsLabel: '36,668 left out of ₹50,000 ',
                value: 0.3,
              ),
              const SizedBox(
                height: 6,
              ),
              const Text('36,668 left out of ₹50,000'),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: const Text(
                  'Increase limit',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  dropDownButtons() {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          DropdownButtonFormField(
            items: const [],
            onChanged: ((value) {}),
            icon: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Online Payments'),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            hint: const Row(
              children: [Text('Default Method')],
            ),
          ),
          DropdownButtonFormField(
            items: const [],
            onChanged: ((value) {}),
            icon: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Payment Profile'),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            hint: const Row(
              children: [Text('Bank Account')],
            ),
          ),

          const Row(
            children: [
              Text(
                'Payments Overview',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                width: 80,
              ),
              Text('Life Time'),
              Icon(
                Icons.keyboard_arrow_down,
                size: 40,
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.orange,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AMOUNT ON HOLD',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          '₹0',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ),
              ),
              Card(
                color: Colors.green,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AMOUNT RECEIVED',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          '₹13,332',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ),
              )
            ],
          ),

          // DropdownButtonFormField(
          //   items: [],
          //   onChanged: ((value) {}),
          //   icon: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text('Payments Overview'),
          //       Icon(Icons.arrow_forward_ios),
          //     ],
          //   ),
          //   hint: Row(
          //     children: [Text('Life Time')],
          //   ),
          // ),
        ],
      ),
    );
  }

  transactions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Transactions',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.grey[400]),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: Text(
                    'On hold',
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Colors.blue),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    )),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: Text(
                    'Payouts(15)',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.grey[400]),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  child: Text('Refunds',
                      style: TextStyle(color: Colors.grey[800])),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  // transactionList(){
  //   ListView.separated(
  //     itemBuilder: ,
  //     separatorBuilder: ((context, index) {
  //               return Divider();
  //             }), itemCount: 10);

  //             ListView.separated(
  //             itemBuilder: (((context, index) {
  //               return ListTile(
  //                 title: Text('Person $index'),
  //                 subtitle: Text('Message $index'),
  //                 leading: CircleAvatar(
  //                   radius: 30,
  //                   backgroundColor: Color.fromARGB(255, 247, 7, 7),
  //                   backgroundImage:
  //                       AssetImage(''),
  //                 ),
  //                 trailing: Text('$index:00 P.M'),
  //               );
  //             })),
  //             separatorBuilder: ((context, index) {
  //               return Divider();
  //             }),
  //             itemCount: 30);

  // }

}
