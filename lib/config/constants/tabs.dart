class Tabs {
  String? text;
  Tabs._({this.text});

  static List<Tabs> categories = [
    Tabs._(text: "All"),
    Tabs._(text: "Popular"),
    Tabs._(text: "Trending"),
    Tabs._(text: "New Releases"),
    Tabs._(text: "Top Rated"),
    Tabs._(text: "Upcoming"),
  ];
}
