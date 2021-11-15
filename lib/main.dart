import 'package:demoapp/models/Car.dart';
import 'package:demoapp/models/CarStyle.dart';
import 'package:demoapp/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CarStyleDataProvider>(
          create: (context) => CarStyleDataProvider(),
        ),
        ChangeNotifierProvider<CarDataProvider>(
          create: (context) => CarDataProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Demo App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          appBarTheme: AppBarTheme(color: Colors.black.withOpacity(0.78)),
          backgroundColor: Colors.black,
          textTheme: GoogleFonts.marmeladTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: SplashScreenPage(),
      ),
    );
  }
}
