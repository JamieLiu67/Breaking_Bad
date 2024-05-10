import 'package:e_mall/models/shop.dart';
import 'package:e_mall/pages/cart_page.dart';
import 'package:e_mall/pages/intro_page.dart';
import 'package:e_mall/pages/setting_page.dart';
import 'package:e_mall/pages/shop_page.dart';
import 'package:e_mall/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Shop()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
      routes: {
        '/intro': (context) => const IntroPage(),
        '/shop': (context) => const ShopPage(),
        '/cart': (context) => const CartPage(),
        '/setting': (context) => const SettingPage(),
      },
    );
  }
}
