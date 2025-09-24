import 'package:anime_ui/core/routing/routes.dart';
import 'package:anime_ui/features/details_screen/presentation/screen/details_screen.dart';
import 'package:anime_ui/features/home/presentation/screen/home_screen.dart';
import 'package:anime_ui/features/upgrade_plan_screen/presentation/screen/upgrade_plan_screen.dart';
import 'package:flutter/material.dart';

class AppRouting {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.detailsScreen:
        return MaterialPageRoute(builder: (_) => DetailsScreen());
      case Routes.upgradePlanScreen:
        return MaterialPageRoute(builder: (_) => UpgradePlanScreen());

      default:
        return defaultPage();
    }
  }

  MaterialPageRoute<dynamic> defaultPage() =>
      MaterialPageRoute(builder: (_) => Scaffold(body: Text("data")));
}
