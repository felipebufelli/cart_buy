import 'package:cart_buy/screens/base/base_screen.dart';
import 'package:cart_buy/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cart Buy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // appBarTheme: const AppBarTheme(
        //   elevation: 0,
        //   color: Colors.transparent,
        // ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/splash',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/splash':
            return MaterialPageRoute(
              builder: (_) => SplashScreen(),
            );
          case '/base':
            return MaterialPageRoute(
              builder: (_) => BaseScreen(),
            );
          default:
            return null;
        }
      },
    );
  }
}
