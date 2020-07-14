import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//src
// import 'package:components/src/pages/home_temp.dart';
import 'package:components/src/routes/routes.dart';
import 'package:components/src/pages/alert_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Components',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [const Locale('en', 'US'), const Locale('es', 'ES')],
      // home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada: ${settings.name}');
        return MaterialPageRoute(
          builder: (context) => AlertPage(),
        );
      },
    );
  }
}
