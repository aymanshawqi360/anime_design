import 'package:anime_ui/config/constants/personality_list.dart';
import 'package:anime_ui/core/utils/spacing.dart';
import 'package:anime_ui/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TopCharacters extends StatelessWidget {
  final PersonalityList personalityList;
  final int index;
  const TopCharacters({
    super.key,
    required this.personalityList,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(personalityList.image.toString()),
          ),
          verticalSpacing(height: 10),
          Text(
            personalityList.personalityName.toString(),
            style: TextStyles.font15Bold,
          ),
          Text(
            personalityList.title.toString(),
            style: TextStyles.font12Medium,
          ),
        ],
      ),
    );
  }
}
