import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final VoidCallback onInitializationComplete;

  const SplashPage({
    required Key key,
    required this.onInitializationComplete,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashPageState();
  }
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aiesha',
      theme: ThemeData(
          backgroundColor: Colors.white, scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        body: Center(
          child: Container(
            height: 325,
            width: 325,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/logo.png')),
            ),
          ),
        ),
      ),
    );
  }
}
