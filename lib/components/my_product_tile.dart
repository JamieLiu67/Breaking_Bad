import 'package:e_mall/models/product.dart';
import 'package:e_mall/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  final Product product;

  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primary,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.inversePrimary),
                child: Lottie.asset(product.imagePath),
                width: double.maxFinite,
                padding: EdgeInsets.all(25),
              ),
            ),
            Gap(15),

            //name
            Text(
              product.name,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            //description
            Text(
              product.description,
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            //price & + buttom
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.price.toStringAsFixed(2) + " \$",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                IconButton(
                    onPressed: () {
                      context.read<Shop>().addToCart(product);
                    },
                    icon: Icon(
                      Icons.add_box_outlined,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
