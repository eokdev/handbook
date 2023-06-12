import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import 'package:handbook/homepage.dart';
void main() async{
 WidgetsFlutterBinding.ensureInitialized();


  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home:  HomePage(),
    );
  }
}


