import '/models/bus_stop_model.dart';

abstract class BusStopsRepository {
  Future<List<BusStopModel>> getAllBusStops();
}
