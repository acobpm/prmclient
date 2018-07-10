//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'property_list.dart';

class PMNavBottom extends StatelessWidget {
  final int screenIndex;
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final currentUser;
  PMNavBottom(this.screenIndex, this.currentUser);

  @override
  Widget build(BuildContext context) {
    return _buildNavBottom(context);
  }

  Widget _buildNavBottom(BuildContext context) {
    return new BottomNavigationBar(
      currentIndex: screenIndex,
      onTap: (int index) {
        // setState(() {
        //   _screen = index;
        // });
        switch (index) {
          case 0:
            Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new PropertyListWidget(currentUser),
                ));

            break;
          case 1:
            Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new PropertyListWidget(currentUser),
                ));

            break;
          case 2:
            Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new PropertyListWidget(currentUser),
                ));

            break;
          default:
        }
      },
      items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text(
            //PMLocalizations.of(context).pgNavPromise,
            "Property",
            style: _biggerFont,
          ),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.assignment),
          title: new Text(
           "Task",
            style: _biggerFont,
          ),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.dashboard),
          title: new Text(
            "Dashboard",
            style: _biggerFont,
          ),
        ),
      ],
    );
  }
}
