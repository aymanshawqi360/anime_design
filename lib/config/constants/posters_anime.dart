import 'package:anime_ui/core/utils/assets_manager.dart';
import 'package:anime_ui/features/home/data/model/posters_anime.dart';

class PosterList extends PostersAnime {
  static List<PosterList> posterList = [
    PosterList(
      animeName: "Hunter x Hunter",
      image: AssetsManager.detectiveConan,
      title: "Adventure",
      rate: 5.0,
    ),
    PosterList(
      animeName: "DetectiveConan",
      image: AssetsManager.hunter,
      title: "Mystery",
      rate: 5.0,
    ),
    PosterList(
      animeName: "Dragon Ball Z",
      image: AssetsManager.dragonball,
      title: "Mystery",
      rate: 4.5,
    ),
  ];

  PosterList({
    required super.image,
    required super.animeName,
    required super.title,
    required super.rate,
  });
}
