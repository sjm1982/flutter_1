import 'package:flutter/material.dart';
import 'package:flutter_1/Home_View.dart';
import 'package:flutter_1/peges.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

   int _currentIndex=0;
   final List<Widget> _list=[
     Homeview(),
     Explorpage(),
     Pasttripstpage()


   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("travel mein app"),
    ),
      body: _list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabpeges,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
           label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "past trips",
          ),
        ],
      )
    );
  }
  void onTabpeges(int index)
  {
    setState(() {
      _currentIndex=index;
    });
  }


}
