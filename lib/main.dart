import 'package:dependency_injection/app_info.dart';
import 'package:dependency_injection/inherited_injection.dart';
import 'package:dependency_injection/singleton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_view.dart';

void main() {
  runApp( MyApp());

  // singleton check
  //Singleton.instance.someMethod();
  Singleton instance = Singleton.instance;
  instance.someMethod();
  Singleton instance2 = Singleton.instance;
  instance2.someMethod();
  SingletonLazy instanceA = SingletonLazy();
  SingletonLazy instanceA2 = SingletonLazy();
  instanceA.someMethod();
  instanceA.someMethod();
  instanceA2.someMethod();
  SingletonEager instanceEager1 = SingletonEager.instance;
  SingletonEager instanceEager2 = SingletonEager.instance;
  instanceEager1.someMethod();
  instanceEager2.someMethod();
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

