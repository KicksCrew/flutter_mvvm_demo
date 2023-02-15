import 'package:dio/dio.dart';

import '/models/bus_stop_model.dart';
import 'bus_stop_repository.dart';

class BusStopAPI extends BusStopsRepository {
  @override
  Future<List<BusStopModel>> getAllBusStops() async {
    List<BusStopModel> busStops = [];
    try {
      var response =
          await Dio().get('https://data.etabus.gov.hk/v1/transport/kmb/route/');
      var list = response.data as List;
      // print(list);
      busStops =
          list.map((bus_stop) => BusStopModel.fromJson(bus_stop)).toList();
    } catch (exception) {
      print(exception);
    }
    print(busStops);
    return busStops;
  }
}
