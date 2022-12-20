import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.title});

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

  Widget logo(double height, double width){
    return Image.asset('assets/logo.svg', height: height,width: width,);
  }

}



