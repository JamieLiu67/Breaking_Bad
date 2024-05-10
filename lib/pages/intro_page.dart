import 'package:e_mall/components/my_buttom.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.remove_shopping_cart,
              size: 85,
              color: Theme.of(context).colorScheme.primary,
            ),

            Gap(5),
            //titile
            Text(
              "Pinkman's Shop",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.background),
            ),
            Gap(5),
            //subtitle
            Text(
              "We sell things that you shouldn't buy",
              style: TextStyle(
                color: Theme.of(context).colorScheme.background,
              ),
            ),
            Gap(20),

            //button
            MyButton(
                onTap: () {
                  Navigator.pushNamed(context, '/shop');
                },
                child: Icon(
                  Icons.arrow_forward_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ))
          ],
        ),
      ),
    );
  }
}
