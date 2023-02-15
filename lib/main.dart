import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/views/bus_Stops_view.dart';

main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BusStopsView(),
    );
  }
}
