import 'package:flutter/material.dart';

import '/repositories/bus_stop_api.dart';
import '/view_models/bus_stop_view_model.dart';
import '/view_models/bus_stops_view_model.dart';

class BusStopsView extends StatelessWidget {
  BusStopsView({Key? key}) : super(key: key);
  //Dependency Injection
  var busStopsViewModel = BusStopsViewModel(busStopsRepository: BusStopAPI());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(busStopsViewModel.title),
      ),
      body: Center(
        child: FutureBuilder<List<BusStopViewModel>>(
          future: busStopsViewModel.fetchAllBusStops(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              var bus_stops = snapshot.data;
              return ListView.builder(
                itemCount: bus_stops?.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text('route: ' + bus_stops![index].route),
                  subtitle: Text(bus_stops[index].orig_en),
                  trailing: Text(bus_stops[index].dest_tc),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
