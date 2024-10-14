import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../custom_widgets/webview_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Embedded Content'),
        ),
        body: WebViewWidget(),
      ),
    );
  }
}
