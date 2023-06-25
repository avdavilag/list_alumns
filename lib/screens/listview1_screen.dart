import 'package:flutter/material.dart';

import '../route/app_routes.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);
  final subjects = const [
    'English',
    'Matematics',
    'Languajes',
    'Physical',
    'Programming'
  ];

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOption;
    return Scaffold(
        appBar: AppBar(
          title: const Text('List of Subjects'),
        ),
        body: ListView(
          children: [
            ...subjects
                .map((subject) => ListTile(
                      title: Text(subject),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {},
                    ))
                .toList(),
          ],
        ));
  }
}
