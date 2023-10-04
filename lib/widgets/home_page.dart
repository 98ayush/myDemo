import 'dart:developer';

import 'package:demo/widgets/child_page.dart';
import 'package:demo/widgets/my_inherited_widget.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    log('DidChangeDependencyCalled of HomePage');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    log('DidUpdateWidget of HomePage');
    super.didUpdateWidget(oldWidget);
  }

  int counter = 0;

  void increment() {
    setState(() {
      counter += 1;
    });
  }

  void decrement() {
    setState(() {
      counter -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyInheritedWidget(
            count: counter,
            increment: increment,
            decrement: decrement,
            child: const ChildPage(),
          ),
        ),
      ),
    );
  }
}
