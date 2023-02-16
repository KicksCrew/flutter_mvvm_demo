import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/bus_route_view_model.dart';

class BusRouteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BusRouteViewModel>(
      create: (context) => BusRouteViewModel()..fetchBusRoutes(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bus Routes'),
        ),
        body: Consumer<BusRouteViewModel>(
          builder: (context, model, child) {
            if (model.busRoutes == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                itemCount: model.busRoutes.length,
                itemBuilder: (context, index) {
                  final busRoute = model.busRoutes[index];
                  return ListTile(
                    title: Text(busRoute.route),
                    subtitle: Text('${busRoute.origEn} - ${busRoute.destTc}'),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
