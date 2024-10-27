import 'package:flutter/material.dart';

import 'custom_widgets/draggable_fab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // This will track the current index of the page
  int _currentIndex = 0;

  // A list of pages to navigate between
  final List<Widget> _pages = [
    const HomePage(),
    const SecondPage(),
    const ThirdPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Display the current page
          _pages[_currentIndex],

          // Draggable Floating Button
          DraggableFloatingButton(
            child: FloatingActionButton(
              onPressed: () {
                print('Floating button pressed');
              },
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),

      // Bottom navigation bar to switch between pages
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: 'Second',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: 'Third',
          ),
        ],
      ),
    );
  }
}

// Page 1
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: const Center(
        child: Text('This is the Home Page'),
        // child: WebViewWidget(),
      ),
    );
  }
}

// Page 2
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: const Center(
        child: Text('This is the Second Page'),
      ),
    );
  }
}

// Page 3
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Third Page')),
      body: const Center(
        child: Text('This is the Third Page'),
      ),
    );
  }
}
