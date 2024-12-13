import 'dart:developer';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class DynamicList extends StatelessWidget {
  const DynamicList({super.key});

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de lista'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => log('message $index'),
            leading: const Icon(Icons.attach_money, color: Colors.green),
            title: Text(faker.person.name()),
            subtitle: Text(
                'Monto: \$${faker.randomGenerator.decimal(min: 50, scale: 500).toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
