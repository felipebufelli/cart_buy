import 'package:cart_buy/common/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF6C7A86),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: CustomDrawer(),
      body: Container(),
    );
  }
}
