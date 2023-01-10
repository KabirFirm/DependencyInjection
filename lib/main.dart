import 'package:dependency_injection/app_info.dart';
import 'package:dependency_injection/inherited_injection.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return InheritedInjection(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dependency Injection',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeView(appInfo: AppInfo(),),
      ),
    );
  }
}

