import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'select your city';
  String dataForTexField ;

  Widget dropButtonFun()
  {
    return  DropdownButton<String>(
      value: dropdownValue,
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      elevation: 5,

      items: <String>['One', 'Two', 'Free', 'Four','select your city']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[400],
        title: Text("HOME",style: TextStyle( fontSize: 20)),


      ),
      body:Container(
        margin: EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            dropButtonFun(),
            dropButtonFun(),
            Container(
             child:TextField(
               decoration: InputDecoration(
                   border: InputBorder.none,
                   hintText: 'Enter Your Name'
               ),
               style: TextStyle(fontSize: 20),
               onChanged:(String data)
               {
                 this.dataForTexField=data;
               },
             ),
            ),
            dropButtonFun(),
          ],
        )
       )
    );
  }
}