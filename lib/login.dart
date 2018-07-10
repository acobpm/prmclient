import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const double _kPickerSheetHeight = 100.0;
const double _kPickerItemHeight = 32.0;
final List < String > _roleList = < String > ["Property Manager", "Landlord"];

class LoginWidget extends StatefulWidget {
  @override
  createState() => new LoginState();
}

class LoginState extends State < LoginWidget > {
  String _loginUser;

  int _selectedItemIndex = 0;
  @override
  void initState() {
    super.initState();
    //_getCoupleList();
    //final pmJsonList = toList(localPMList);
  }

  @override
  Widget build(BuildContext context) {

    final _biggerFont =
      const TextStyle(fontSize: 24.0, color: Colors.blue);
    final _smallFont =
      const TextStyle(fontSize: 16.0, color: Colors.blue);

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        actions: < Widget > [
          //new IconButton(icon: new Icon(Icons.list), onPressed: ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: < Widget > [
          Center(
            child: Text(
              "Select View",
              style: _biggerFont,
            ),
          ),

          // new Padding(
          //   padding: new EdgeInsets.all(16.0),
          //   child: new Center(
          //     child: new DropdownButton<String>(
          //       value: _loginUser,
          //       isDense: false,
          //       onChanged: (String newValue) {
          //         setState(() {
          //           _loginUser = newValue;
          //         });
          //       },
          //       items: _loginUserList.map((String value) {
          //         return new DropdownMenuItem<String>(
          //           value: value,
          //           child: new Text(value),
          //         );
          //       }).toList(),
          //     ),
          //   ),
          // ),
          _buildPicker(context),
          SizedBox(height: 20.0, ),
          Center(
            child: Text(
              "Click below to start",
              style: _smallFont,
            ),
          ),
           SizedBox(height: 40.0, ),

          Center(child: Icon(Icons.power_settings_new , color: Colors.blue,size: 70.0, ),
            //  Center(
            //   child:  RaisedButton(
            //     child:  Text("Login",),
            //     onPressed: () {
            //       if (_loginUser != null) {
            //         _doLogin(_loginUser);
            //       }
            //     },
            //   ),
          ),
        ],
      ));
  }



  Widget _buildPicker(BuildContext context) {
    final FixedExtentScrollController scrollController =
      new FixedExtentScrollController(initialItem: _selectedItemIndex);

    return new Container(
      height: _kPickerSheetHeight,
      color: CupertinoColors.white,
      child: new DefaultTextStyle(
        style: const TextStyle(
            color: CupertinoColors.black,
            fontSize: 22.0,
          ),
          child: new GestureDetector(
            // Blocks taps from propagating to the modal sheet and popping.
            onTap: () {},
            child: new SafeArea(
              child: new CupertinoPicker(
                scrollController: scrollController,
                itemExtent: _kPickerItemHeight,
                backgroundColor: CupertinoColors.white,
                onSelectedItemChanged: (int index) {
                  setState(() {
                    _selectedItemIndex = index;
                  });
                },
                children: new List < Widget > .generate(_roleList.length, (int index) {
                  return new Center(child:
                    new Text(_roleList[index], style: new TextStyle(color: Colors.blue)),
                  );
                }),
              ),
            ),
          ),
      ),
    );
  }
  void _doLogin(String loginUser) async {
    //var loginPerson = await getCouple(loginUser);
    //if (loginPerson != null) {
    // Navigator.push(
    //     context,
    //     new MaterialPageRoute(
    //       builder: (BuildContext context) => new PromiseListWidget(loginPerson),
    //     ));
    //  }
  }
}