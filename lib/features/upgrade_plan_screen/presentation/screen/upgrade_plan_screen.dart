import 'package:anime_ui/config/constants/linear_gradient.dart';
import 'package:anime_ui/core/utils/assets_manager.dart';
import 'package:anime_ui/core/utils/hex_color.dart';
import 'package:anime_ui/core/utils/spacing.dart';
import 'package:anime_ui/core/utils/styles.dart';
import 'package:anime_ui/core/utils/texts_manager.dart';
import 'package:anime_ui/core/widgets/app_button.dart';
import 'package:anime_ui/core/widgets/app_monthly_subscription_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpgradePlanScreen extends StatelessWidget {
  const UpgradePlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: globalBackgroundGradient(color: Color(0xFFD3D6FF)),
        ),

        child: Stack(
          children: [
            Positioned(
              top: -95,
              left: -150,
              child: SvgPicture.asset(AssetsManager.star),
            ),
            Positioned(
              top: 250,
              right: -160,
              child: SvgPicture.asset(
                AssetsManager.cartIcon,
                height: 300,
                width: 300,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 68,
                bottom: 64,
                left: 17,
                right: 17,
              ),
              // padding: EdgeInsets.symmetric(horizontal: 17),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            TextsManager.upgradePlan,
                            style: TextStyles.font22Bold,
                          ),
                        ],
                      ),
                      CircleAvatar(
                        maxRadius: 17,

                        backgroundColor: HexColor(hexColor: 'FFFFFF'),
                        child: Icon(Icons.close),
                      ),
                    ],
                  ),
                  Image.asset(
                    AssetsManager.rocketBoy,
                    width: 299,
                    height: 299,
                    fit: BoxFit.cover,
                  ),

                  Column(
                    children: [
                      Container(
                        constraints: BoxConstraints(maxWidth: 290),
                        child: Text(
                          textAlign: TextAlign.center,
                          TextsManager.seamlessAnimeExperienceAdFree,
                          style: TextStyles.font23Bold,
                        ),
                      ),
                      verticalSpacing(height: 4),
                      Container(
                        constraints: BoxConstraints(maxWidth: 350),
                        child: Text(
                          textAlign: TextAlign.center,
                          TextsManager
                              .enjoyUnlimitedAnimeStreamingWithoutInterruptions,
                          style: TextStyles.font14Medium,
                        ),
                      ),
                    ],
                  ),
                  verticalSpacing(height: 39),

                  AppMonthlySubscriptionOption(),
                  verticalSpacing(height: 13),
                  AppMonthlySubscriptionOption(
                    styleMonthlyPrice: TextStyles.font16Bold.copyWith(
                      color: HexColor(hexColor: "18153F"),
                    ),
                    styleMonthly: TextStyles.font16Bold.copyWith(
                      color: HexColor(hexColor: "18153F"),
                    ),
                    color: HexColor(hexColor: '#FFFFFF'),
                  ),
                  Spacer(),
                  AppButtonItem(
                    height: 55,

                    width: double.infinity,
                    color: HexColor(hexColor: '#5436F8'),
                    widget: Center(
                      child: Text("Continue", style: TextStyles.font16Bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
