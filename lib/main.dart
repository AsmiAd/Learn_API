import 'package:flutter/material.dart';
import 'package:learn_api/main_screen.dart';
import 'package:learn_api/views/home_page.dart';
import 'package:learn_api/views/screen_with_model.dart';
import 'package:learn_api/views/screen_without_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter API',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
    
    initialRoute: '/',
      routes: {
        '/': (context) => const Mainscreen(),
        '/home': (context) => const HomePage(),
        '/withModel': (context) => const ScreenWithModel(),
        '/withoutModel': (context) => const ScreenWithoutModel (),
        // '/register': (context) => const RegistrationScreen(),
        // '/commerce': (context) => const HomeNavigation(),
        // '/counter': (context) => const CounterApp(),
        // '/counterriverpod': (context) => CounterAppRiverpod(),
        // '/toggle': (context) => ThemeToggleApp()

      },
    );
  }
}
