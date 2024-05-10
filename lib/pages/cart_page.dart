import 'package:e_mall/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // Add your widget build code here.
  void payButtonPressed(BuildContext context) {
    // Add your pay button pressed code here.
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              content: Text(
                "Payment successful!",
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        title: Text('Cart Page'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: cart.isEmpty
                    ? Center(
                        child: Text(
                        "Nothing here, go get some yo !",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.background,
                        ),
                      ))
                    : ListView.builder(
                        itemCount: cart.length,
                        itemBuilder: (context, index) {
                          final item = cart[index];
                          return ListTile(
                            title: Text(item.name),
                            subtitle: Text('\$${item.price}'),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                context.read<Shop>().removeFromCart(item);
                              },
                            ),
                          );
                        }),
              ),
              ElevatedButton(
                  onPressed: () {
                    payButtonPressed(context);
                  },
                  child: Text(
                    'Pay for these',
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  )),
              Gap(10),
            ],
          ),
        ],
      ),
    );
  }
}
