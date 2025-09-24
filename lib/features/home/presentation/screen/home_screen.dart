import 'package:anime_ui/config/constants/linear_gradient.dart';
import 'package:anime_ui/core/utils/assets_manager.dart';
import 'package:anime_ui/core/utils/hex_color.dart';
import 'package:anime_ui/features/home/presentation/widget/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<String> _icons = [
    "assets/svg/home.svg",
    "assets/svg/group.svg",
    "assets/svg/search.svg",
    "assets/svg/language.svg",
    "assets/svg/setting.svg",
    // Icons.menu_book,
    // Icons.search,
    // Icons.public,
    // Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(gradient: globalBackgroundGradient()),
        child: Stack(
          children: [
            Positioned(
              top: -90,
              right: -180,
              child: SvgPicture.asset(
                AssetsManager.cartIcon,
                height: 420,
                width: 4020,
              ),
            ),
            Body(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(_icons.length, (index) {
            if (index == _selectedIndex) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: HexColor(hexColor: '6C4EFF'),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(_icons[index]),
                    SizedBox(width: 8),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: SvgPicture.asset(_icons[index], color: Colors.grey),
                // Icon(_icons[index], color: Colors.grey),
              );
            }
          }),
        ),
      ),
    );
  }
}
