class BusStopModel {
  final String route;
  final String orig_en;
  final String dest_tc;

  BusStopModel(
      {required this.route, required this.orig_en, required this.dest_tc});

  factory BusStopModel.fromJson(Map<String, dynamic> json) {
    return BusStopModel(
      route: json['route'] ?? "",
      orig_en: json['orig_en'] ?? "",
      dest_tc: json['dest_tc'] ?? "",
    );
  }
}
