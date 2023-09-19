
import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class DukaanPremium extends StatefulWidget {
  const DukaanPremium({super.key});

  @override
  State<DukaanPremium> createState() => _DukaanPremiumState();
}

class _DukaanPremiumState extends State<DukaanPremium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.blue[50],
        title: const Text('Dukaan Premium'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          dukaanPremium(),
          const SizedBox(
            height: 10,
          ),
          features(),
          videoCard(),
          questionCard(),
          helpCard(),
          premiumCard(),
          // videoCard(),
        ],
      )),
    );
  }

  dukaanPremium() {
    return Stack(
      // alignment: AlignmentDirectional(start, y),
      children: [
        Container(
          height: 205,
          width: 400,
          color: Colors.blue,
        ),
        Positioned(
          top: 125,
          child: Container(
            height: 80,
            width: 400,
            color: Colors.white,
          ),
        ),
        Positioned(
          left: 35,
          top: 10,
          child: Card(
            margin: const EdgeInsets.all(5.0),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Center(
                child: Column(
                  children: [
                    //dukaan logo image,
                    Image.asset(
                      'assets/images/62b30f8cb223544c209f5e56.png',
                      width: 90,
                    ),
                    const Text(
                      '''Get Dukaan Premium for just 
                ₹4,999/year''',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
                    ),
                    const Text(
                      '''All the advanced features for scaling your 
                           business.''',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  features() {
    return SizedBox(
      height: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Features',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          ListTile(
            leading: Image.asset('assets/images/f1.jpeg'),
            title: const Text(
              'Custom domain name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              'Get your own domain and build your brand on the internet.',
              style: TextStyle(fontSize: 12),
            ),
          ),
          ListTile(
            leading: Image.asset('assets/images/f2.jpeg'),
            title: const Text(
              'Verified Seller badge',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
                'Get green verified badge under your store name and build trust.',
                style: TextStyle(fontSize: 12)),
          ),
          ListTile(
            leading: Image.asset('assets/images/f3.jpeg'),
            title: const Text(
              'Dukaan for PC',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
                'Access all the exclusive premium features on Dukaan for PC.',
                style: TextStyle(fontSize: 12)),
          ),
          ListTile(
            leading: Image.asset('assets/images/f4.jpeg'),
            title: const Text(
              'Priority Support',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
                'Get your questions resolved with our priority customer support.',
                style: TextStyle(fontSize: 12)),
          ),
          Divider(
            color: Colors.grey[400],
            thickness: 2,
          )
        ],
      ),
    );
  }

  videoCard() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'What is Dukaan Premium?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/youtubepremium.jpg'),
            Divider(
              color: Colors.grey[400],
              thickness: 2,
            )
          ],
        ),
      ),
    );
  }

  questionCard() {
    String dropdownValue1 = 'What types of businesses can use Dukaan Premium';
 
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: Column(
          children: [
            const Text('Frequently asked questions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            DropdownButtonFormField(
              hint: const Text(
                '''What types of businesses can use Dukaan Premium?''',
                style: TextStyle(fontSize: 12.5),
              ),
              icon: const Icon(Icons.add),
              onChanged: (String? newValue) {
                setState(() {
                  newValue = dropdownValue1;
                });
              },
              items: <String>[
                '''Dukaan caters to a wide variety of sellers.
Be it a small grocery store or big
legacy brand-anyone who wants to sell
their products/services online - 
Dukaan is the perfect platform for you'''
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(fontSize: 15),
                  ),
                );
              }).toList(),
            ),
            DropdownButtonFormField(
              items: const [],
              onChanged: ((value) {}),
              hint: const Text(
                'What is your refund policy?',
                style: TextStyle(fontSize: 12.5),
              ),
              icon: const Icon(Icons.add),
            ),
            DropdownButtonFormField(
              items: const [],
              onChanged: ((value) {}),
              hint: const Text(
                '''Will there be an automatic charge after the paid trial?''',
                style: TextStyle(fontSize: 12),
              ),
              icon: const Icon(Icons.add),
            ),
            DropdownButtonFormField(
              items: const [],
              onChanged: ((value) {}),
              hint: const Text(
                'What payment methods do you offer?',
                style: TextStyle(fontSize: 12.5),
              ),
              icon: const Icon(Icons.add),
            ),
            DropdownButtonFormField(
              items: const [],
              onChanged: ((value) {}),
              hint: const Text(
                'What happens when my free trial ends?',
                style: TextStyle(fontSize: 12.5),
              ),
              icon: const Icon(Icons.add),
            ),
            DropdownButtonFormField(
              items: const [],
              onChanged: ((value) {}),
              hint: const Text(
                'What are the terms for custom dmain?',
                style: TextStyle(fontSize: 12.5),
              ),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }

  helpCard() {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Need help? Get in touch',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  shadowColor: Colors.black87,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 15, horizontal: 43),
                    child: Center(
                      child: Column(children: [
                        Icon(
                          Icons.chat_bubble_outline,
                          size: 50,
                        ),
                        Text('Live Chat'),
                      ]),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 15, horizontal: 43),
                    child: Center(
                      child: Column(children: [
                        Icon(
                          Icons.phone_outlined,
                          size: 50,
                        ),
                        Text('Phone Call'),
                      ]),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  premiumCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Domain',
              style: TextStyle(color: Colors.blue[900], fontSize: 16),
            ),
            const SizedBox(
              width: 30,
            ),
            TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[900]),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 36),
                  child: Text(
                    'Get Premium',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
