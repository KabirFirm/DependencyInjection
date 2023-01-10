import 'package:dependency_injection/app_info.dart';
import 'package:dependency_injection/inherited_injection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  // HomeView has dependency on the AppInfo
  AppInfo appInfo;
  HomeView({Key? key, required this.appInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dependency Injection'),
      ),
      body: Step1(),
    );
  }
}

class Step1 extends StatelessWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Step2();
  }
}

class Step2 extends StatelessWidget {
  const Step2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Step3();
  }
}

class Step3 extends StatelessWidget {
  const Step3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Step4();
  }
}

class Step4 extends StatelessWidget {
  //final AppInfo appInfo;
  const Step4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appInfo = Provider.of<AppInfo>(context);
    return Center(
      child: Text(appInfo.welcomeMessage),
    );
  }
}



