import '/models/bus_stop_model.dart';

class BusStopViewModel {
  BusStopModel? busStopModel;
  BusStopViewModel({this.busStopModel});

  get route => busStopModel?.route;
  get orig_en => busStopModel?.orig_en;
  get dest_tc => busStopModel?.dest_tc;
}
