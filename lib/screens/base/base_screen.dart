import 'package:cart_buy/common/custom_drawer.dart';
import 'package:cart_buy/models/base/base_page_model.dart';
import 'package:cart_buy/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return ChangeNotifierProvider(
      create: (_) => BasePageModel(controller),
      child: Consumer<BasePageModel>(builder: (_, basePageModel, __) {
        return PageView(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            HomeScreen(),
            Scaffold(
              backgroundColor: const Color(0xFF6C7A86),
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              drawer: CustomDrawer(),
              body: Container(
                color: Colors.green,
              ),
            ),
            Scaffold(
              backgroundColor: const Color(0xFF6C7A86),
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              drawer: CustomDrawer(),
              body: Container(
                color: Colors.red,
              ),
            ),
          ],
        );
      }),
    );
  }
}
