import 'package:cart_buy/common/checkpoints.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacementNamed('/base');
    });
  }

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      body: Center(
        child: Icon(
          Icons.shopping_cart_outlined,
          color: Colors.black,
          semanticLabel: 'Cart Buy',
          size: widthSize < phoneCheckpoint
              ? 80
              : widthSize < tabletCheckPoint
                  ? 120
                  : 150,
        ),
      ),
    );
  }
}
