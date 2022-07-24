import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:temp/providers/counter_provider.dart';
import 'package:temp/screen/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const MyHomePage(),
      },
    );
  }
}
