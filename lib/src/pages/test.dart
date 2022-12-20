import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            _showDialog(context);
          },
          child: Text("Hello User !!",),
        ),
      ),
    );
  }

  Widget logo(double height, double width){
    return Image.asset('assets/logo.svg', height: height,width: width,);
  }

  void _showDialog(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text("Alert"),
        content: Text("This is alert message please be aware ;)"),
        actions: [
          TextButton(
            child: Text("Close"),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    });
  }



}



