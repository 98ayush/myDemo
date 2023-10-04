import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final int count;
  final VoidCallback increment;
  final VoidCallback decrement;

  const MyInheritedWidget({
    required this.count,
    required this.increment,
    required this.decrement,
    required super.child,
    super.key,
  });

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
  }
}
