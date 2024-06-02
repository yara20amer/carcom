import 'dart:async';

import 'package:carcom/Views/startpage.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Startup()),
        );
      },
    );

    return const Scaffold(
        body: Center(
      child: Image(
          image: AssetImage(
              'assets\\Carcom_logo.jpg'), // Make sure to specify the correct file extension
          alignment: Alignment.bottomCenter),
    ));
  }
}
