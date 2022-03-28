import 'package:flutter/material.dart';
import 'package:flutter_application_1/glowingbtn.dart';
import 'package:flutter_application_1/putter.dart';
//import 'package:puppeteer/puppeteer.dart';

void main() {
  return runApp(MaterialApp(
    home: Home(),
    title: 'Start1',
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('testApp'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GlowinButton(),
              GlowinButton(
                colors1: Colors.pink,
                colors2: Colors.indigoAccent,
              ),
              GlowinButton(
                colors1: Colors.redAccent,
                colors2: Colors.yellowAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
