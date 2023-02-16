class BusRoute {
  final String route;
  final String origEn;
  final String destTc;

  BusRoute({required this.route, required this.origEn, required this.destTc});

  factory BusRoute.fromJson(Map<String, dynamic> json) {
    return BusRoute(
      route: json['route'],
      origEn: json['orig_en'],
      destTc: json['dest_tc'],
    );
  }
}
