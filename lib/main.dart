import 'package:flutter/material.dart';
import 'src/pages/test.dart';
import 'src/pages/productbox/home.dart.';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'Product Navigation'),
    );
  }
}


class MyHomePage extends StatelessWidget {

  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:',),
            Text(title, style: Theme.of(context).textTheme.headline4,),
          ],
        ),
      ),
    );
  }
}
