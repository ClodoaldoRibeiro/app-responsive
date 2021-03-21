import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive2/pages/home/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MyApp();
    },
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      title: 'Responsive 2',
      theme: ThemeData(primarySwatch: Colors.blue),
      builder: (context, child) {
        DevicePreview.appBuilder(context, child);

        return ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, child),
            defaultScale: true,
            minWidth: 450,
            defaultName: MOBILE,
            breakpoints: [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.resize(700, name: TABLET),
              ResponsiveBreakpoint.resize(800, name: DESKTOP),
            ]);
      },
      home: HomePage(),
    );
  }
}
