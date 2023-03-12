import 'package:flutter/material.dart';

class add_money extends StatelessWidget {
  const add_money({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 44, 48, 48),
        body: Center(
          child: Text('qua scannerizzi il codice QR'),
        ));
  }
}