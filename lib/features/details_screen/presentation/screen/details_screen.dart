import 'package:anime_ui/config/constants/anime_quick_info.dart';
import 'package:anime_ui/core/utils/assets_manager.dart';
import 'package:anime_ui/core/utils/extension.dart';
import 'package:anime_ui/core/utils/hex_color.dart';
import 'package:anime_ui/core/utils/spacing.dart';
import 'package:anime_ui/core/utils/styles.dart';
import 'package:anime_ui/core/utils/texts_manager.dart';
import 'package:anime_ui/core/widgets/app_divider.dart';
import 'package:anime_ui/features/details_screen/presentation/widget/anime_category_set.dart';
import 'package:anime_ui/features/details_screen/presentation/widget/botton_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(hexColor: '2c1E51'),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Image.asset(AssetsManager.detailsScreen, scale: 0.2),

                        verticalSpacing(height: 80),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            children: [
                              AnimeCategory(),
                              verticalSpacing(height: 23),
                              AppDivider(),
                              verticalSpacing(height: 12),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: List.generate(
                                  AnimeQuickinfo.animeQuickinfo.length,
                                  (int index) {
                                    return Row(
                                      children: [
                                        SvgPicture.asset(
                                          AnimeQuickinfo.animeQuickinfo.keys
                                              .elementAt(index),
                                          width: 23,
                                          height: 23,
                                          // fit: BoxFit.cover,
                                        ),
                                        horizontalSpacing(width: 10),
                                        Text(
                                          AnimeQuickinfo.animeQuickinfo.values
                                              .elementAt(index),
                                          style: TextStyles.font14Regular,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              verticalSpacing(height: 12),

                              AppDivider(),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(AssetsManager.fierLogo),
                                  horizontalSpacing(width: 10),
                                  Container(
                                    constraints: BoxConstraints(maxWidth: 350),
                                    child: Text(
                                      TextsManager.description,
                                      style: TextStyles.font14SemiMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: context.screenHeight / 1.85,
                      left: 120,

                      child: Row(
                        children: [SvgPicture.asset(AssetsManager.logo)],
                      ),
                    ),
                    Positioned(
                      bottom: 185,
                      right: -80,
                      child: Container(
                        height: 280,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          shape: BoxShape.circle,

                          gradient: RadialGradient(
                            stops: [0.0, 0.3, 0.8],
                            colors: [
                              Color(0xFF713649),
                              Color(0xFF713649).withOpacity(0.6),
                              Color(0xFF713649).withOpacity(0.0),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      left: -70,
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white60,
                          shape: BoxShape.circle,

                          gradient: RadialGradient(
                            stops: [0.0, 0.3, 0.8],
                            colors: [
                              Color(0xFF713649),
                              Color(0xFF713649).withOpacity(0.6),
                              Color(0xFF713649).withOpacity(0.0),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottonDetailsScreen(),
    );
  }
}
