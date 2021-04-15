import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notification/Search.dart';
import 'package:notification/allproduct.dart';
import 'package:notification/bottomnav.dart';
import 'package:notification/notification/notification_widget.dart';
import 'HomePages.dart';

import './home_page/home_page_widget.dart';
import 'Products.dart';
import 'Notification.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BottomNav(),
        //home: Allproduct(),
        //home: Search(),
        //home: Notifications(),

        routes: <String, WidgetBuilder>{
          "/b": (BuildContext context) => Products(),
          "/notification": (BuildContext context) => Notifications(),
          "/search": (BuildContext context) => Search(),
        });
  }
}
