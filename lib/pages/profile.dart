import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor :Color.fromARGB(255, 44, 48, 48),
      
      body: Center(
        
        child: ElevatedButton(
          
          onPressed: () {
            // Azione quando il bottone viene premuto
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          ),
          child: Text('LOGIN'),
        ),
        
      ),
    );
  }
}
