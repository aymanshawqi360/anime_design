import 'package:anime_ui/core/utils/assets_manager.dart';
import 'package:anime_ui/features/home/data/model/anime_personality.dart';

class PersonalityList extends AnimePersonality {
  PersonalityList({
    required super.image,
    required super.personalityName,
    required super.title,
  });

  static List<PersonalityList> personAlityList = [
    PersonalityList(
      personalityName: 'Gon Freecss',
      image: AssetsManager.gonFreecss,
      title: 'Hunter x Hunter',
    ),
    PersonalityList(
      personalityName: 'Naruto Uzumaki',
      image: AssetsManager.narutoUzumaki,
      title: 'Naruto',
    ),
    PersonalityList(
      personalityName: 'Luffy',
      image: AssetsManager.luffy,
      title: 'One Piece',
    ),
    PersonalityList(
      personalityName: 'Conan Edogawa',
      image: AssetsManager.conanEdogawa,
      title: 'Detective Conan',
    ),
  ];
}
