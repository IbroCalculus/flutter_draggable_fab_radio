import 'package:flutter/material.dart';

import '../custom_widgets/webview_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Embedded Content'),
        ),
        body: const MyWebView(),
      ),
    );
  }
}
