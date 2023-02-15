import '/models/bus_stop_model.dart';
import '/repositories/bus_stop_repository.dart';
import '/view_models/bus_stop_view_model.dart';

class BusStopsViewModel {
  final String title = "All Bus Stops";
  BusStopsRepository? busStopsRepository;
  BusStopsViewModel({this.busStopsRepository});

  Future<List<BusStopViewModel>> fetchAllBusStops() async {
    List<BusStopModel> list = await busStopsRepository!.getAllBusStops();
    return list
        .map((bus_stop) => BusStopViewModel(busStopModel: bus_stop))
        .toList();
  }
}
