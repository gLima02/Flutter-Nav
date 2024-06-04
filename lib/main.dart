import 'package:flutter/material.dart';
import 'package:navegacao/first_page.dart';
import 'package:navegacao/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const firstPage(),
        "/second": (context) {return const secondPage();},
      },
      initialRoute: "/",
    );
  }
}