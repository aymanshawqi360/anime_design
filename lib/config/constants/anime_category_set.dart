class AnimeCategorySet {
  String category;
  AnimeCategorySet._({required this.category});
  static List<AnimeCategorySet> categories = [
    AnimeCategorySet._(category: "Dark Fantasy"),
    AnimeCategorySet._(category: "Action"),
    AnimeCategorySet._(category: "Adventure"),
  ];
}
