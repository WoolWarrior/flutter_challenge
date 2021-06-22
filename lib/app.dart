import 'package:flutter/material.dart';
import 'package:crowth_app/components/components.dart';
import 'package:crowth_app/theme/custom_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crowth',
      theme: CustomTheme.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(title: 'Crowth'),
      },
    );
  }
}
