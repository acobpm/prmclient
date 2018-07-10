
import 'package:flutter/material.dart';
import 'pm_nav.dart';

class PropertyListWidget extends StatefulWidget {
  PropertyListWidget(this.currentUser);
  final String currentUser;
  @override
  createState() => new PropertyListState(currentUser);

}

class PropertyListState extends State<PropertyListWidget> {
  PropertyListState(this.currentUser);
  final _biggerFont = const TextStyle(fontSize: 18.0);

  final String currentUser;
  
  String userMe ;//current user
  String userPartner ;


  @override
  void initState() {
    super.initState();

    
    _getPMList();
  }

  _getPMList() async {
   
  
    setState(() {


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            tooltip: 'Property',
            icon: const Icon(Icons.home),
            onPressed: () {
              
            },
          ),
        title: Text("Property"),
        actions: < Widget > [
          new IconButton(icon: new Icon(Icons.list), onPressed: (){}),
          new IconButton(icon: new Icon(Icons.search), onPressed: (){}),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: < Widget > [
          Center(
            child: Text(
              "list",
              style: _biggerFont,
            ),
          ),
        ]
      ),
      bottomNavigationBar: new PMNavBottom(0,currentUser),

    );
  }
  }