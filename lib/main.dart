import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:handbook/homepage.dart';

import 'onBoardingScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  final pref = await SharedPreferences.getInstance();
  final keyTrue = pref.getBool("KeyTrue") ?? false;
  runApp(
     ProviderScope(
      child: MyApp(keys: keyTrue),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool? keys;
  const MyApp({
    Key? key,
    required this.keys,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: purple, // Desired color
    ));
    return MaterialApp(
      color: purple,
      title: 'Jabu Handbook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: keys == true ? HomePage() : OnBoardingScreen(),
    );
  }
}
