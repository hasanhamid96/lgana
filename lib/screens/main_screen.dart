import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lgana/screens/rooms.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index=0;
  @override
  void initState() {
    _index=0;
    super.initState();
  }
  void _changeBottmNavBar(int selIndex){
    setState(() {
      _index=selIndex;
    });
  }
  static  List<Widget> _widgetOptions = <Widget>[
    Rooms(),
    Text(
      'Index 1: Business',

    ),
    Text(
      'Index 2: School',

    ),
    Text(
      'Index 3: School',

    )
  ];

static const TextStyle _optionalStyle=TextStyle(
  fontSize: 15,
  color: Colors.white,
  fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text('ECO')),
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
      ),




      body:
         _widgetOptions.elementAt(_index),















      bottomNavigationBar: BottomNavigationBar(
        elevation:0,
        backgroundColor: Theme.of(context).accentColor,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 35,),
            title: Text('Rooms',
              style: _optionalStyle,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,size: 35,),
            title: Text('Favorite',style:_optionalStyle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,size: 35,),
            title: Text('Search',
              style: _optionalStyle),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.more_horiz,size: 35,),
            title: Text('More',style: _optionalStyle),
          ),
        ],
        onTap:_changeBottmNavBar,
        currentIndex: _index,

        selectedItemColor: Colors.white,
      ),
    );
  }
}
