import 'package:flutter/material.dart';
import 'thirdpage.dart';

import 'firstpage.dart';
import 'secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.indigo[900],
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Create \nPdf",
              ),
              Tab(
                text: "Scanned \nPdf",
              ),
              Tab(
                text: "Signature \nPdf",
              ),
            ],
          ),
          title: Text(
            'Avi-Scanner',
          ),
        ),
        body: TabBarView(
          children: [
            Firstpage(),
            Secondpage(),
            thirdpage(),
          ],
        ),
      ),
    );
  }
}
