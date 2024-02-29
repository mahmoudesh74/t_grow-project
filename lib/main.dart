import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:t_grow/presentation/screens/alert.dart';
import 'package:t_grow/presentation/screens/chat_bot/chat_bot.dart';
import 'package:t_grow/presentation/screens/home1/home1.dart';
import 'package:t_grow/presentation/screens/home2/home2.dart';
import 'package:t_grow/presentation/screens/home_screen/home_screen.dart';
import 'package:t_grow/presentation/screens/plant/plant.dart';
import 'package:t_grow/presentation/screens/scan1/scan1.dart';
import 'package:t_grow/presentation/screens/scan2/scan2.dart';
import 'package:t_grow/presentation/screens/treatment/treatment.dart';

import 'core/local/app_local.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        AppLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('ar', "EG"),
        Locale('en', "US"),
      ],
      locale: Locale('en'),
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const HomeScreen(),
    );
  }
}



