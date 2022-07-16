import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return const MaterialApp(
      title: 'Log me in',
      home: Scaffold(
        body: Text('Show a form here'),
      ),
    );
  }
}
