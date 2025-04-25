import 'package:flutter/material.dart';
import 'package:web_app/views/rar_block_credit_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'resume',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Plus Jakarta Sans',
      ),
      home: const RareBlocksCreditCard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
