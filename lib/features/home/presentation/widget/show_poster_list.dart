import 'package:anime_ui/config/constants/posters_anime.dart';
import 'package:anime_ui/core/utils/assets_manager.dart';
import 'package:anime_ui/core/utils/hex_color.dart';
import 'package:anime_ui/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShowPosterList extends StatelessWidget {
  final PosterList posterList;
  const ShowPosterList({super.key, required this.posterList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 184,
          height: 245,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(posterList.image.toString()),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(right: 23, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: HexColor(hexColor: "FFFFFF"),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        size: 20,
                        color: HexColor(hexColor: "5436F8"),
                      ),
                      Text(posterList.rate.toString()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(posterList.animeName.toString(), style: TextStyles.font15Bold),
        Text(posterList.title.toString(), style: TextStyles.font12Medium),
      ],
    );
  }
}
