import 'package:flutter/material.dart';

class Additional extends StatelessWidget {
  const Additional({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Additional Information'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: additionalList(),
    );
  }
}

additionalList() {
  return SafeArea(
    child: Column(
      children: [
        ListTile(
          title: const Text('Share Dukaan App'),
          leading: const Icon(Icons.share),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Change Language'),
          leading: const Icon(Icons.chat_bubble_outline),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        SwitchListTile(
          value: true,
          title: const Text('WhatApp Chat Support'),
          secondary: const Icon(Icons.whatshot),
          onChanged: (value) => false,
        ),
        ListTile(
          title: const Text('Privacy Policy'),
          leading: const Icon(Icons.lock),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Rate Us'),
          leading: const Icon(Icons.star),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Sign Out'),
          leading: const Icon(Icons.logout),
          onTap: () {},
        ),
      ],
    ),
  );
}
