import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_ui/Controller/call_controller.dart';
import 'package:settings_ui/ui/order_screen.dart';
import 'constant.dart';
import 'custom_appbar.dart';
import 'history.dart';
import 'order_page_history/_orderpage_history.dart';
import 'order_page_history/order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CallController())
      ],
      child: MaterialApp(
        title: 'Call History',
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: GlobalKey(),
      ),
      backgroundColor: Colors.white,
      body: CallHistoryPage(),
    );
  }
}
