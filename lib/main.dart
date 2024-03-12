import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  String get html => """
   <!DOCTYPE html>
    <html>
    
    <head>
      <style>
        body {
          margin:0 auto;
          overflow: hidden;
        }
    
        .embed-iframe {
          position: relative;
          padding-bottom: 56.25%;
          padding-top: 0px;
          padding-left: 0px;
          padding-right: 0p;
          margin: 0 auto;
          height: 100%;
          overflow: hidden;
        }
    
        .embed-iframe iframe,
        .embed-iframe object,
        .embed-iframe embed {
          border: 0;
          position: absolute;
          top: 0;
          left: 0;
          width: 100%;
          height:100%;
          border-radius:12px;
        }
      </style>
    
      <meta charset="UTF-8">
      <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=0.8, maximum-scale=0.8, minimum-scale=0.8">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
    </head>
    
    
    <body>
      <div class="embed-iframe">
        <iframe src="https://player.scaleup.com.br/embed/510c42b9fde8af543194ea9fdc0296149cc5a1a5"
          title=""
          allow="accelerometer; clipboard-write; encrypted-media; gyroscope; autoplay; muted;fullscreen;"
          allowfullscreen webkitallowfullscreen style="width: 100%; aspect-ratio: 16 / 9; border: 0px; margin: 0px auto; padding: 0px;"></iframe>
      </div>
      <script>
    
      </script>
    </body>
    
    </html>
  """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              "InAppWebView",
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: InAppWebView(
                key: const ValueKey("Teste"),
                initialSettings: InAppWebViewSettings(
                  hardwareAcceleration: true,
                  forceDark: ForceDark.OFF,
                  geolocationEnabled: false,
                  javaScriptEnabled: true,
                  allowsPictureInPictureMediaPlayback: true,
                  allowsInlineMediaPlayback: true,
                  iframeAllowFullscreen: true,
                  isElementFullscreenEnabled: true,
                ),
                initialData: InAppWebViewInitialData(
                  data: html,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
