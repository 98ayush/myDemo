import 'package:flutter/material.dart';

class BottomNavigationDemo extends StatefulWidget {
  @override
  _BottomNavigationDemoState createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {
  final ValueNotifier<int> _currentIndex = ValueNotifier(0);

  // int _currentIndex = 0;

  void changeIndex(int newIndex) {
    _currentIndex.value = newIndex;
  }

  List<Widget> _screens = [];

  @override
  void initState() {
    _screens = [
      ScreenOne(indexChange: (int index) {
        changeIndex(index);
      }),
      ScreenTwo(indexChange: changeIndex),
      ScreenThree(indexChange: changeIndex),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Demo'),
      ),
      body: ValueListenableBuilder(
        valueListenable: _currentIndex,
        builder: (context, _, __) => _screens[_currentIndex.value],
      ),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: _currentIndex,
          builder: (context, _, __) {
            return BottomNavigationBar(
              currentIndex: _currentIndex.value,
              onTap: changeIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Screen 1',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Screen 2',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Screen 3',
                ),
              ],
            );
          }),
    );
  }
}

class ScreenOne extends StatelessWidget {
  final Function(int index) indexChange;

  const ScreenOne({required this.indexChange, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: GestureDetector(
              onTap: () {
                indexChange(1);
              },
              child: const Text('Screen 1 Content')),
        ),
      ],
    );
  }
}

class ScreenTwo extends StatelessWidget {
  final Function(int index) indexChange;

  const ScreenTwo({required this.indexChange, super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 2 Content'),
    );
  }
}

class ScreenThree extends StatelessWidget {
  final Function(int index) indexChange;

  const ScreenThree({required this.indexChange, super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screen 3 Content'),
    );
  }
}
