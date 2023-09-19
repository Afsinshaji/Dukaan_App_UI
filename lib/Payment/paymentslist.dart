import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PaymentList extends StatelessWidget {
  PaymentList({super.key});

  List<String> title = [
    'Order #1688068',
    'Order #1457741',
    'Order #1408896',
    'Order #1369633',
    'Order #1369633',
    'Order #1688068',
    'Order #1457741',
    'Order #1408896',
    'Order #1369633',
    'Order #1369633',
    'Order #1688068',
    'Order #1457741',
    'Order #1408896',
    'Order #1369633',
    'Order #1369633',
  ];

  List<String> title2 = [
    'Jul 12, 02:06 PM',
    'Apr 26, 07:47 AM',
    'Apr 11, 10:54 AM',
    'Apr 2, 11:29 AM',
    'Apr 2, 11:29 AM',
    'Jul 12, 02:06 PM',
    'Apr 26, 07:47 AM',
    'Apr 11, 10:54 AM',
    'Apr 2, 11:29 AM',
    'Apr 2, 11:29 AM',
    'Jul 12, 02:06 PM',
    'Apr 26, 07:47 AM',
    'Apr 11, 10:54 AM',
    'Apr 2, 11:29 AM',
    'Apr 2, 11:29 AM',
  ];
  List<String> subtitle = [
    '₹ 799 deposited to 58860200000128',
    '₹ 397.4 deposited to 58860200000128',
    '₹ 686.4 deposited to 58860200000128',
    '₹ 799 deposited to 58860200000128',
    '₹ 397.4 deposited to 58860200000128',
    '₹ 686.4 deposited to 58860200000128',
    '₹ 799 deposited to 58860200000128',
    '₹ 397.4 deposited to 58860200000128',
    '₹ 686.4 deposited to 58860200000128',
    '₹ 799 deposited to 58860200000128',
    '₹ 397.4 deposited to 58860200000128',
    '₹ 686.4 deposited to 58860200000128',
    '₹ 799 deposited to 58860200000128',
    '₹ 397 deposited to 58860200000128',
    '₹ 686.4 deposited to 58860200000128',
  ];
  List<String> image = [
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
    'assets/images/bhagwan_kasam_black_tshirt_model_800x_slkophr7ezqvv9sf.webp',
    'assets/images/New-Mockups---no-hanger---TShirt-Yellow.webp',
    'assets/images/p1968902.jpg',
    'assets/images/swag-swami-cute-design-kids-unisex-t-shirts-combo-pack-6-nos-1.jpg',
    'assets/images/handpainted-funky-matte-500ml--set-of-2--pink-ceramic-coffee-mug-by-miah-decor-handpainted-funky-mat-bzswlr.webp',
  ];
  List<String> price = [
    '₹799',
    '₹899',
    '₹599',
    '₹1888',
    '₹488',
    '₹799',
    '₹899',
    '₹599',
    '₹1888',
    '₹488',
    '₹799',
    '₹899',
    '₹599',
    '₹1888',
    '₹488'
  ];

  List<String> status = [
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
    'Successful',
  ];

  // @override
  // Widget build(BuildContext context) {
  //   return ListView.builder(
  //       shrinkWrap: true,
  //       physics: const NeverScrollableScrollPhysics(),
  //       itemBuilder: ((context, index) {
  //         return ListTile(
  //             title: Column(children: [
  //               Text(title[index]),
  //               Text(
  //                 title2[index],
  //                 style: TextStyle(),
  //               ),
  //             ]),
  //             subtitle: Text(title2[index]),
  //             leading: Image.asset(image[index]),
  //             trailing: Column(children: [
  //               Text(price[index],
  //                   style: TextStyle(
  //                       color: const Color.fromARGB(255, 32, 94, 163))),
  //               Row(
  //                 children: [
  //                   Icon(
  //                     Icons.circle,
  //                     color: Colors.green,
  //                   ),
  //                   Text(status[index]),
  //                 ],
  //               ),
  //             ]));
  //       }),
  //       // separatorBuilder: ((context, index) {
  //       //   return const Divider();
  //       // }),
  //       itemCount: title.length);
  // }
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: ((context, index) {
        return const Divider();
      }),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: title.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title[index],
              ),
              Text(title2[index],
                  style: TextStyle(
                      fontSize: 13, color: Colors.black.withOpacity(0.5))),
              const SizedBox(
                height: 15,
              )
            ],
          ),
          subtitle: Text(
            subtitle[index],
            style: const TextStyle(fontSize: 10),
          ),
          leading: Image.asset(image[index]),
          trailing: Column(
            children: [
              Text(price[index],
                  style:
                      const TextStyle(color: Color.fromARGB(255, 32, 94, 163))),
              // Row(
              //   children: [
              //     Icon(
              //       Icons.circle,
              //       color: Colors.green,
              //       size: 6,
              //     ),
              //     Text(status[index]),
              //   ],
              // ),
            ],
          ),
        );
      },
    );
  }
}
