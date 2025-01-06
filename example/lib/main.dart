import 'package:flutter/material.dart';

import 'package:flutter_ios_airplay/flutter_ios_airplay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await FlutterIosAirplay.url(
                      url:
                          'webrtc://demnaylive.monster/demnaylive/11736146545276977442475101');
                },
                child: const Text('Video Url'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
