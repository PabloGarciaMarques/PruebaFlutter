import 'dart:developer';

import 'package:flutter/material.dart';

import 'my_home_page.dart';

void main() async {
  runApp(const MyApp());
}

Future<void> obtenerDatos() async {
  log('Empezo..........');
  await Future.delayed(const Duration(seconds: 2), () {
    log('Estoy dentro');
  });
  log('He salido');
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
      home: const MyHomePage(
        title: '',
      ),
    );
  }
}
