import 'package:flutter/material.dart';

class ThemingApp extends StatefulWidget {
  const ThemingApp({Key? key}) : super(key: key);

  @override
  State<ThemingApp> createState() => _ThemingAppState();
}

class _ThemingAppState extends State<ThemingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Theme",
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            navigate(context);
          },
          child: Text("Take me to page 2"),
        ),
      ),
    );
  }

  void navigate(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return const Page2();
        },
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE 2"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("Button 1"),
          ),
          Theme(
            data: Theme.of(context).copyWith(
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
              ),
            ),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Button 2"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Button 3"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
