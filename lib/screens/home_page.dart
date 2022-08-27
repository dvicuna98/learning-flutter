import 'package:flutter/material.dart';
import 'package:learning/router/app_routes.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final menuOptions = AppRoutes.menuOptions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView.separated(
          itemBuilder: (context, i) =>ListTile(
            leading:  Icon(menuOptions[i].icon),
            title: Text(menuOptions[i].name),
            onTap: (){
              Navigator.pushNamed(context, menuOptions[i].route);
            },
          ) ,
          separatorBuilder: (_,__) => const Divider() ,
          itemCount: AppRoutes.menuOptions.length
      )
    );
  }
}
