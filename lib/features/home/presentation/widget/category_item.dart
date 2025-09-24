import 'package:anime_ui/config/constants/tabs.dart';
import 'package:anime_ui/core/utils/hex_color.dart';
import 'package:anime_ui/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final int index;
  const CategoryItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),

        // constraints: BoxConstraints(maxHeight: 40),
        decoration: BoxDecoration(
          color: index == 0
              ? HexColor(hexColor: '5436F8')
              : HexColor(hexColor: 'FFFFFF'),

          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          Tabs.categories[index].text.toString(),
          style: TextStyles.font14Bold.copyWith(
            color: index == 0
                ? HexColor(hexColor: 'FFFFFF')
                : HexColor(hexColor: '5436F8'),
          ),
        ),
      ),
    );
  }
}
