
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidget extends StatefulWidget {
  @override
  _WebViewWidgetState createState() => _WebViewWidgetState();
}

class _WebViewWidgetState extends State<WebViewWidget> {
  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: 'https://d1uzdx1j6g4d0a.cloudfront.net/players/top/30/245822/?socials=0&apps=true&identifier=UI&source=6843',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
