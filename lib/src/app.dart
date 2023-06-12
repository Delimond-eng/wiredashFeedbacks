import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wiredash/wiredash.dart';

import '../screens/Home/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Wiredash(
      projectId: "dabvideo-ux0m23t",
      secret: "c1PL8LAxbXuOGQs9OtH6OHlp2OGaNS1p",
      options: const WiredashOptionsData(
        locale: Locale("fr"),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wiredash feedbacks',
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('fr', 'FR')],
        theme: ThemeData(
          primaryColor: Colors.red,
          primarySwatch: Colors.red,
        ),
        home: const Home(),
      ),
    );
  }
}
