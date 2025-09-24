import 'dart:ui';

import 'package:anime_ui/config/constants/anime_category_set.dart';
import 'package:anime_ui/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AnimeItem extends StatelessWidget {
  final AnimeCategorySet animeCategorySet;
  const AnimeItem({super.key, required this.animeCategorySet});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: Container(color: Colors.white.withOpacity(0.1)),
            ),

            Center(
              child: Text(
                animeCategorySet.category,

                style: TextStyles.font13Medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
