class BusStopModel {
  int? route;
  int? orig_en;
  String? dest_tc;

  BusStopModel({this.route, this.orig_en, this.dest_tc});
  BusStopModel.fromJson(Map<String, dynamic> json) {
    route = json['route'];
    orig_en = json['orig_en'];
    dest_tc = json['dest_tc'];
  }
  Map<String, dynamic> toJSON() {
    return {"route": route, "orig_en": orig_en, "dest_tc": dest_tc};
  }
}
