import 'package:demo/widgets/home_page.dart';
import 'package:flutter/material.dart';


class BaseApp extends StatelessWidget {
  const BaseApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: HomePage(),
      );
}
