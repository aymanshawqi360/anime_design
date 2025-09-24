import 'package:anime_ui/config/constants/anime_category_set.dart';
import 'package:anime_ui/features/details_screen/presentation/widget/anime_item.dart';
import 'package:flutter/material.dart';

class AnimeCategory extends StatelessWidget {
  const AnimeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(AnimeCategorySet.categories.length, (int index) {
        return AnimeItem(animeCategorySet: AnimeCategorySet.categories[index]);
      }),
    );
  }
}
