import 'package:e_mall/components/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  // Add your widget build code here.

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //drawer header
          Column(
            children: [
              DrawerHeader(
                  child: Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              )),
              Gap(5),

              //shop title
              MyListTile(
                text: "Shop",
                icon: Icons.home_outlined,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/shop');
                },
              ),

              //cart title
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart_outlined,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/cart');
                },
              ),

              MyListTile(
                text: "Setting",
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/setting');
                },
              ),
            ],
          ),

          //exit shop tile
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                MyListTile(
                  text: "Exit",
                  icon: Icons.exit_to_app,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/intro');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
