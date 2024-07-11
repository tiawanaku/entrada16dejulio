import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RecorridoScreen extends StatefulWidget {
  @override
  _RecorridoScreenState createState() => _RecorridoScreenState();
}

class _RecorridoScreenState extends State<RecorridoScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recorrido Entrada 2024'),
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: 'https://www.google.com/maps/d/embed?mid=18CcrNzdg_iSppXryttHWf1jl5UaWnTA&ehbc=2E312F',
            javascriptMode: JavascriptMode.unrestricted,
            onPageStarted: (String url) {
              setState(() {
                _isLoading = true;
              });
            },
            onPageFinished: (String url) {
              setState(() {
                _isLoading = false;
              });
            },
          ),
          _isLoading ? Center(child: CircularProgressIndicator()) : Container(),
        ],
      ),
    );
  }
}
