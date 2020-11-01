import 'package:flutter/cupertino.dart';

class myAppBottombr extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<myAppBottombr> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          BottomBar()
        ],
      ),
    );
  }
}
class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage(
          'assets/images/tab_home.png'
        ),
      ),
    );
  }
}

