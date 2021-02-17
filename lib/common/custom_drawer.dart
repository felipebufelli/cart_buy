import 'package:cart_buy/models/base/base_page_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BasePageModel>(builder: (_, basePage, __) {
      return Drawer(
        elevation: 0,
        child: Container(
          color: const Color(0xFF6C7A86),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 16,
              ),
              itemDrawer(
                context: context,
                onTap: () {
                  basePage.setPage(0);
                },
                text: 'Meu estoque',
                icon: Icons.kitchen,
                page: 0,
              ),
              itemDrawer(
                context: context,
                onTap: () {
                  basePage.setPage(1);
                },
                text: 'Para comprar',
                icon: Icons.add_shopping_cart,
                page: 1,
              ),
              itemDrawer(
                context: context,
                onTap: () {
                  basePage.setPage(2);
                },
                text: 'Produtos Extras',
                icon: Icons.bookmark_outline,
                page: 2,
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget itemDrawer({
    VoidCallback onTap,
    String text,
    IconData icon,
    int page,
    BuildContext context,
  }) {
    int currentPage = context.read<BasePageModel>().currentPage;
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                icon,
                size: 16,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight:
                    page == currentPage ? FontWeight.bold : FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
