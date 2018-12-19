import 'package:flutter/material.dart';
import 'navigation_icon_view.dart';
import 'package:clone/mainFunc/home_page.dart';
import 'package:clone/mainFunc/noft.dart';
import 'package:clone/mainFunc/reco.dart';
import 'package:clone/mainFunc/setting.dart';


class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin {
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  int _currentIndex = 0;
  StatefulWidget _currentPage;


  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _navigationViews = <NavigationIconView>[
        new NavigationIconView(
          icon: new Icon(Icons.settings),
          title: new Text("我的設定"),
          vsync: this
        ),
        new NavigationIconView(
          icon: new Icon(Icons.receipt),
          title: new Text("食譜首頁"),
          vsync: this
        ),
        new NavigationIconView(
          icon: new Icon(Icons.hot_tub),
          title: new Text("成長紀錄"),
          vsync: this
        ),
        new NavigationIconView(
          icon: new Icon(Icons.notifications),
          title: new Text("通知"),
          vsync: this
        ),
      ];

      for(NavigationIconView view in _navigationViews){
        view.controller.addListener(_rebuild);
      }

      _pageList = <StatefulWidget> [
        new Home_page(),
        new Reco(),
        new Setting(),
        new Noft()
      ];

      _currentPage = _pageList[_currentIndex];
      
    }


  void _rebuild() {
    setState(() { });
  }


  @override
    void dispose() {
      // TODO: implement dispose
      super.dispose();
      for(NavigationIconView view in _navigationViews){
        view.controller.dispose();
      }
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: _navigationViews.map((NavigationIconView navigationIconView) => navigationIconView.item).toList(),
      currentIndex: _currentIndex,
      fixedColor: Colors.pink,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        _navigationViews[_currentIndex].controller.reverse();
        _currentIndex = index;
        _navigationViews[_currentIndex].controller.forward();
        _currentPage = _pageList[_currentIndex];
      },
    );



    return new MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: new Text("植物老大"),
            backgroundColor: Colors.pink[200],
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.smoking_rooms),
              ),
            ],


          ),
          body: Center(
              child: _currentPage,
          ),
          bottomNavigationBar: bottomNavigationBar,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.pink,
          ),
      ),
    );
  }
}