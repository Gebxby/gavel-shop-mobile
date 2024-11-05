import 'package:flutter/material.dart';
import 'package:gavel_shop_mobile/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gavel shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(secondary: const Color.fromARGB(255, 87, 194, 192)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'gavel shop'),
    );
  }
}
