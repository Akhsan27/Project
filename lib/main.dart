import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up_barang/pages/splash_page.dart';
import 'package:up_barang/providers/transactions_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TransactionProvider(),
        child: MaterialApp(
          title: 'Aplikasi Pengelolaan Anggaran',
          theme: ThemeData(primarySwatch: Colors.blue),
          home: const SplashPage(),
        ));
  }
}
