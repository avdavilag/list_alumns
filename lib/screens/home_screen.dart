import 'package:fl_components_mio/route/app_routes.dart';
import 'package:fl_components_mio/screens/screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOption;
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Andy Project')),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  leading: Icon(menuOption[i].icon, color: AppTheme.primary),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined,
                      color: AppTheme.primary),
                  title: Text(menuOption[i].name),
                  onTap: () {
                    Navigator.pushNamed(context, menuOption[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOption.length));
  }
}
