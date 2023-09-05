import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main(){
  runApp(MaterialApp(home: WebViewEx(),));
}

class WebViewEx extends StatefulWidget {


  @override
  State<WebViewEx> createState() => _WebViewExState();
}

class _WebViewExState extends State<WebViewEx> {
  late WebViewController controller;
  @override
 void initState() {
    controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse('https://unsplash.com/'));
        super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Widget'),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
