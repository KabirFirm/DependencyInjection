import 'package:flutter/material.dart';
import 'app_info.dart';

class InheritedInjection extends InheritedWidget {
  final AppInfo _appInfo = AppInfo();
  final Widget child;

  InheritedInjection({required this.child}) : super(child: child);

  AppInfo get appInfo => _appInfo;

  static InheritedInjection? of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<InheritedInjection>());
  }

  @override
  bool updateShouldNotify(InheritedInjection oldWidget) {
    return true;
  }
}