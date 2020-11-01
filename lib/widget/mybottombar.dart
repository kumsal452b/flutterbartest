import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myAppBottombr extends StatefulWidget {
  final int selectedTab;
  final Function(int) tabClic;
  const myAppBottombr({Key key, this.selectedTab,this.tabClic}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<myAppBottombr> {
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  int selectTab=widget.selectedTab??0;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 10
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color:Colors.black.withOpacity(0.48),
              spreadRadius: 1,
              blurRadius: 15
          )
        ]
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomBar(
            path: 'assets/images/tab_home.png',
            isSelect: selectTab==0?true:false,
            clickItem: (){
             widget.tabClic(0);
            },
          ),
          BottomBar(
            path: 'assets/images/tab_saved.png',
            isSelect: selectTab==1?true:false,
            clickItem: (){
              widget.tabClic(1);
            },
          ),
          BottomBar(
            path: 'assets/images/tab_logout.png',
            isSelect: selectTab==2?true:false,
            clickItem: (){
              widget.tabClic(2);
            },
          ),
          BottomBar(
            path: 'assets/images/tab_search.png',
            isSelect: selectTab==3?true:false,
            clickItem: (){
              widget.tabClic(3);
            },
          ),
        ],
      ),
    );
  }
}
class BottomBar extends StatelessWidget {
  final String path;
  final bool isSelect;
  final Function clickItem;
  const BottomBar({Key key, this.path,this.isSelect, this.clickItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool selected=isSelect??false;
    return GestureDetector(
      onTap: clickItem,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: selected?Colors.redAccent:Colors.transparent,
              width: 2,

            )
          )
        ),
        padding: EdgeInsets.symmetric(
          vertical: 8
        ),
        child: Image(
          height: 35,
          width: 35,
          color: selected?Colors.redAccent:Colors.black,
          image: AssetImage(
            path
          ),
        ),
      ),
    );
  }
}

