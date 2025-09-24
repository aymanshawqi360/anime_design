import 'package:anime_ui/config/constants/personality_list.dart';
import 'package:anime_ui/config/constants/posters_anime.dart';
import 'package:anime_ui/config/constants/tabs.dart';
import 'package:anime_ui/core/utils/spacing.dart';
import 'package:anime_ui/core/utils/styles.dart';
import 'package:anime_ui/core/utils/texts_manager.dart';
import 'package:anime_ui/core/widgets/app_list_view.dart';
import 'package:anime_ui/features/home/presentation/widget/category_item.dart';
import 'package:anime_ui/features/home/presentation/widget/show_poster_list.dart';
import 'package:anime_ui/features/home/presentation/widget/top_characters.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 67, left: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TextsManager.title, style: TextStyles.font24Bold),
          verticalSpacing(height: 24),
          Container(
            constraints: BoxConstraints(maxHeight: 35),
            child: AppListView(
              scrollDirection: Axis.horizontal,

              itemCount: Tabs.categories.length,
              itemBuilder: (context, index) {
                return CategoryItem(index: index);
              },
            ),
          ),
          verticalSpacing(height: 20),
          Container(
            constraints: BoxConstraints(maxHeight: 295),
            child: AppListView(
              scrollDirection: Axis.horizontal,

              itemCount: PosterList.posterList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: index == 0 ? 0 : 15,
                  ),
                  child: ShowPosterList(
                    posterList: PosterList.posterList[index],
                  ),
                );
              },
            ),
          ),
          verticalSpacing(height: 24),
          Text(TextsManager.topCharacters, style: TextStyles.font25Bold),
          verticalSpacing(height: 24),
          Container(
            constraints: BoxConstraints(maxHeight: 170),
            child: AppListView(
              scrollDirection: Axis.horizontal,
              itemCount: PersonalityList.personAlityList.length,
              itemBuilder: (context, index) {
                return TopCharacters(
                  index: index,
                  personalityList: PersonalityList.personAlityList[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
