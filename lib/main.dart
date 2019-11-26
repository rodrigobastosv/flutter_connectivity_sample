import 'package:flutter/material.dart';

import 'connectivity_alert_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connectivity'),
        centerTitle: true,
      ),
      body: Center(
        child: ConnectivityAlertWidget(
          onlineWidget: Icon(Icons.network_wifi, color: Colors.green, size: 250),
          offlineWidget: Icon(Icons.signal_wifi_off, color: Colors.red, size: 250),
        ),
      ),
    );
  }
}
