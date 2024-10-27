import 'package:flutter/material.dart';

import '../custom_widgets/draggable_fab.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Stack(
        children: [
          Navigator(
            initialRoute: '/',
            onGenerateRoute: (RouteSettings settings) {
              Widget page;
              switch (settings.name) {
                case '/second':
                  page = const SecondPage();
                  break;
                default:
                  page = const HomePage();
              }
              return MaterialPageRoute(builder: (_) => page);
            },
          ),
          DraggableFloatingButton(
            child: FloatingActionButton(
              onPressed: () {
                // Your action here
              },
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home Page'));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Second Page'));
  }
}
