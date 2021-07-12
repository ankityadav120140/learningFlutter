import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Catalog",
          ),
        ),
        body: Container(
          child: Text("Mai nahi jaunga vaha"),
        ),
        drawer: Drawer(),
        endDrawer: Drawer(),
      ),
    );
  }
}
