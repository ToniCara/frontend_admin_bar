import 'package:flutter/material.dart';

class notify extends StatelessWidget {
  const notify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 44, 48, 48),
        body: Center(
          child: Text('qua ricevi le notifiche'),
        ));
  }
}