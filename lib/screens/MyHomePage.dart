import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterbartest/widget/mybottombar.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController;
  int selectTab=0;
  @override
  void initState() {
    pageController=new PageController();
    super.initState();
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        onPageChanged: (num){
          setState(() {
            selectTab=num;
          });
        },
        controller: pageController,
        children: [
          Container(
            child: Center(child: Text("Home page")),
          ),
          Container(
            child: Center(child: Text("Saved page")),
          ),
          Container(
            child: Center(child: Text("Logout page")),
          ),
          Container(
            child: Center(child: Text("Search page")),
          ),
        ],
      ),
      bottomNavigationBar: myAppBottombr(
        selectedTab: selectTab,
        tabClic: (num){
          pageController.animateToPage(num, duration: Duration(milliseconds: 300), curve: Curves.ease);
        },
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
