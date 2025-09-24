// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:anime_ui/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';

class AnimeQuickinfo {
  // String? releaseDate;
  // String? clap;
  // String? seasons;

  // AnimeQuickinfo({
  //   required this.releaseDate,
  //   required this.clap,
  //   required this.seasons,
  // });
  static Map<String, String> animeQuickinfo = {
    AssetsManager.faSolidEye: "2.3M views",
    AssetsManager.handsClapping: "2K clap",
    AssetsManager.maskGroup: "4 Seasons",
  };
}
