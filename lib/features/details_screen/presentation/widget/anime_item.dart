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
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
          child: Container(
            alignment: Alignment.center,
            color: Colors.grey.withOpacity(0.1),
            child: Text(
              animeCategorySet.category,
              style: TextStyles.font13Medium,
            ),
          ),
        ),
      ),
    );
  }
}
