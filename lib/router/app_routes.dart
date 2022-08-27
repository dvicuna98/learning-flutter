import 'package:flutter/material.dart';
import 'package:learning/screens/screens.dart';
import 'package:learning/models/models.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'special', icon: Icons.input, name: 'Special Inputs', screen: const SpecialInputs()),
    MenuOption(route: 'input', icon: Icons.input, name: 'Inputs', screen: const InputScreen()),
    MenuOption(route: 'card', icon: Icons.input, name: 'Card Screen', screen: const CardScreen()),
    MenuOption(route: 'alert', icon: Icons.input, name: 'Alert Screen', screen: const AlertScreen()),
    MenuOption(route: 'slider', icon: Icons.input, name: 'Slider && Checks', screen: const SliderScreen()),
    MenuOption(route: 'listBuilder', icon: Icons.input, name: 'List View Builder', screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home':(BuildContext context)=>HomePage()});

    for (final option in menuOptions){
      appRoutes.addAll({option.route:(BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) =>  HomePage()
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(
      builder: (context) => HomePage()
    );
  }

}