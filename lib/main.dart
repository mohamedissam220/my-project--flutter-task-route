import 'package:flutter/material.dart';
import 'package:task147/injection.dart';
import 'package:task147/view/product_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection("prod");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2596be)),
        useMaterial3: true,
        
      ),
      home: const ProductScreen()
    );
  }
}