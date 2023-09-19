import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

// ignore: must_be_immutable
class CatalogueList extends StatelessWidget {
  CatalogueList({super.key});
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return Card(
                child: ListTile(
              trailing: const Icon(Icons.more_vert),
              leading: Image.asset(productsimage[index]),
              title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Text(
                        producttitle[index],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    const Text(
                      '1 piece',
                      style: TextStyle(fontSize: 14),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text(
                        productprice[index],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'In Stock',
                          style: TextStyle(color: Colors.green),
                        ),
                        FlutterSwitch(
                          value: status,
                          onToggle: (status) {},
                          width: 30,
                          height: 15,
                          toggleSize: 7,
                        )
                      ],
                    )
                  ]),
              subtitle: Card(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: Column(
                    children: [
                      Wrap(
                        spacing: 5,
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.black,
                          ),
                          Text(
                            'Share Product',
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ));
          })),
    );
  }
}

List producttitle = [
  'Couch Potato | Women T Shirt',
  'Couch Potato  | Men T Shirt',
  'Mug | Explore',
  'Combo Blahst 1 | Pack',
  'Mug | Orchard',
  'I See Combo Pack',
  'Kids Combo Blahst',
  'Men | Cyan T Shirt',
  'Men | Blue T Shirt',
  'Men | Red T Shirt',
];
List productprice = [
  '₹799',
  '₹2397.4',
  '₹2686.42',
  '₹1722.75',
  '₹2599.25',
  '₹599.25',
  '₹524.25',
  '₹1699',
  '₹1123.5',
  '₹1524.25',
];
List productsimage = [
  'assets/images/bhagwan_kasam_black_tshirt_model_800x_slkophr7ezqvv9sf.webp',
  'assets/images/New-Mockups---no-hanger---TShirt-Yellow.webp',
  'assets/images/p1968902.jpg',
  'assets/images/swag-swami-cute-design-kids-unisex-t-shirts-combo-pack-6-nos-1.jpg',
  'assets/images/handpainted-funky-matte-500ml--set-of-2--pink-ceramic-coffee-mug-by-miah-decor-handpainted-funky-mat-bzswlr.webp',
  'assets/images/4PACK.jpg',
  'assets/images/swag-swami-cute-design-kids-unisex-t-shirts-combo-pack-6-nos-1.jpg',
  'assets/images/New-Mockups---no-hanger---TShirt-Yellow.webp',
  'assets/images/navy_blue_plain_t-shirt_men_base_700x933.jpg',
  'assets/images/kidsimg7-1_2048x.webp',
];
