import 'package:flutter/material.dart';
class TabContent extends StatelessWidget {
  Widget firstStack()
  {
    return  Container(
      color: Colors.grey,
      height: 80,
      child: Stack(
        children: <Widget>[

          Positioned(
            top: 10,
            left: 90,
            width: 500,
            height: 100,
            child: Row(
              children: <Widget>[
            Container(

            padding: const EdgeInsets.all(25.0),
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            child: new Text("jan 18", style: new TextStyle(color: Colors.white, fontSize: 20.0)),

          ),//............
                Container(

                  padding: const EdgeInsets.all(25.0),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                  child: new Text("DEc 18", style: new TextStyle(color: Colors.white, fontSize: 20.0)),

                ),//.......

// next button over stack


    ],

            ),
          ),
          Positioned(
            top: 10,
            left: 200,
            width: 180,
            height: 40,
            child: Container(
              margin: EdgeInsets.only(right: 15),
              padding: EdgeInsets.all(10),
              color: Colors.blueGrey,
              child: Text("VIEW DETAil",style:TextStyle(fontSize: 15) ,),
            ),
          ),
          Positioned(
            top: 100,
            left: 110,
            width: 80,
            height: 35,
            child:
                Container(
                  margin: EdgeInsets.only(right: 15),
                  padding: EdgeInsets.all(10),

                  child: Text("1000",style:TextStyle(fontSize: 15) ,),
                ),

          ),
      Positioned(
          top: 100,
          left: 220,
          width: 80,
          height: 35,
          child:
          Container(
            margin: EdgeInsets.only(right: 15),
            padding: EdgeInsets.all(10),

            child: Text("1000",style:TextStyle(fontSize: 15) ,),
          ),
  ),
   ] ),);
  }
  Widget secondStack()
  {
    return  Container(
      color: Colors.grey,
      height: 0,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 10,
            left: 200,
            width: 180,
            height: 40,
            child: Container(
              margin: EdgeInsets.only(right: 15),
              padding: EdgeInsets.all(10),
              color: Colors.blueGrey,
              child: Text("VIEW DETAil",style:TextStyle(fontSize: 15) ,),
            ),
          ),
          Positioned(
            top: 10,
            left: 0,
            width: 180,
            height: 30,
            child: Container(
              width: 100.0,
              height: 30.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.redAccent,

          ),
          ),
          ),
          Positioned(
            top: 40,
            left: 0,
            width: 150,
            height: 30,
            child: Container(
              width: 100.0,
              height: 30.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.black26,

              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 0,
            width: 100,
            height: 30,
            child: Container(
              width: 100.0,
              height: 30.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white,

              ),
            ),
          ),

        ],
      ),
    );
  }
  Widget thirdStack()
  {
    return  Container(
      color: Colors.grey,
      height: 0,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 10,
            left: 200,
            width: 180,
            height: 40,
            child: Container(
              margin: EdgeInsets.only(right: 15),
              padding: EdgeInsets.all(10),
              color: Colors.blueGrey,
              child: Text("VIEW DETAil",style:TextStyle(fontSize: 15) ,),
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.all(20),
        child: 
          Column(
            children: <Widget>[
              SizedBox(
                height: 20,
                width: 9999,
              ),
              Expanded(
                child:  firstStack(),

                flex: 1,
              ),
              SizedBox(
                height: 20,
                 width: 9999,
                ),

              Expanded(
                child:  secondStack(),

                flex: 1,
              ),
              SizedBox(
                height: 20,
                width: 9999,
              ),
              Expanded(
                child:  thirdStack(),

                flex: 1,
              ),SizedBox(
                height: 20,
                width: 9999,
              ),
            ],
          ),
        
      );
  }
}
