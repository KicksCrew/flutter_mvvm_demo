import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/bus_route_model.dart';
import '../repositories/bus_route_repository.dart';

class BusRouteViewModel extends ChangeNotifier {
  final busRouteRepository = BusRouteRepository();

  late List<BusRoute> _busRoutes = [];

  List<BusRoute> get busRoutes => _busRoutes;

  Future<void> fetchBusRoutes() async {
    _busRoutes = await busRouteRepository.fetchBusRoutes();
    notifyListeners();
  }
}
