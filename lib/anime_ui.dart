import 'package:anime_ui/core/routing/app_routing.dart';
import 'package:anime_ui/core/routing/routes.dart';
import 'package:anime_ui/core/utils/hex_color.dart';
import 'package:flutter/material.dart';

class AnimeUi extends StatelessWidget {
  final AppRouting appRouting;
  const AnimeUi({super.key, required this.appRouting});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  theme: ThemeData(scaffoldBackgroundColor: HexColor(hexColor: 'DEE3FF')),

      initialRoute: Routes.homeScreen,
      // initialRoute: Routes.detailsScreen,
      // initialRoute: Routes.upgradePlanScreen,
      onGenerateRoute: appRouting.onGenerateRoute,
    );
  }
}
