import 'package:anime_ui/core/utils/assets_manager.dart';
import 'package:anime_ui/core/utils/hex_color.dart';
import 'package:anime_ui/core/utils/spacing.dart';
import 'package:anime_ui/core/utils/styles.dart';
import 'package:anime_ui/core/utils/texts_manager.dart';
import 'package:anime_ui/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottonDetailsScreen extends StatelessWidget {
  const BottonDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: HexColor(hexColor: '16103C'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppButtonItem(
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AssetsManager.preView, height: 25, width: 25),
                horizontalSpacing(width: 8),
                Text(TextsManager.preview, style: TextStyles.font15SemiBold),
              ],
            ),
          ),
          AppButtonItem(
            color: HexColor(hexColor: '6758FE'),
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AssetsManager.faSolidEye,
                  height: 25,
                  width: 25,
                ),
                horizontalSpacing(width: 8),
                Text(TextsManager.watchNow, style: TextStyles.font15SemiBold),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
