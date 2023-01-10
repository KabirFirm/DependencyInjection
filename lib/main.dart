import 'package:dependency_injection/app_info.dart';
import 'package:dependency_injection/inherited_injection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_view.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AppInfo(),
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

