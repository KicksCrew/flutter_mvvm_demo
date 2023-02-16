import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/bus_route_model.dart';

class BusRouteRepository {
  Future<List<BusRoute>> fetchBusRoutes() async {
    final response = await http
        .get(Uri.parse('https://data.etabus.gov.hk/v1/transport/kmb/route/'));
    final json = jsonDecode(response.body);
    final routesJson = json['data'] as List<dynamic>;
    final routes =
        routesJson.map((routeJson) => BusRoute.fromJson(routeJson)).toList();
    return routes;
  }
}
