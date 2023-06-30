import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {

  InAppWebViewController? webViewController;

  PullToRefreshController? refreshController;

  //late var url;
  var initialUrl = "https://carcheckup.co.uk/";
  double progress = 0;
  var urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse(initialUrl)),
          )),
        ],
      )
    );
  }
}
