import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
  const MyWebView({super.key});

  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://d1uzdx1j6g4d0a.cloudfront.net/players/top/30/245822/?socials=0&apps=true&identifier=UI&source=6843'));
  }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: _controller); // Use the WebViewWidget with the controller
  }
}
