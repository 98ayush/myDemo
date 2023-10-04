import 'dart:developer';

import 'package:demo/widgets/my_inherited_widget.dart';
import 'package:flutter/material.dart';


class ChildPage extends StatefulWidget {
  const ChildPage({super.key});

  @override
  State<ChildPage> createState() => _ChildPageState();
}

class _ChildPageState extends State<ChildPage> {
  @override
  void didChangeDependencies() {
    log('DidChangeDependencyCalled of ChildPage');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant ChildPage oldWidget) {
    log('DidUpdateWidget of ChildPage');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    var data = MyInheritedWidget.of(context).count.toString();
    log('data :- $data');
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          data,
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  MyInheritedWidget.of(context).decrement();
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  MyInheritedWidget.of(context).increment();
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
