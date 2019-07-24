import 'package:flutter/material.dart';
import './NavigationPage.dart';
import './MyApp.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  Widget drawerFun()
  {
    return  Drawer(
      elevation: 10,
      child: ListView(
        children: <Widget>[

          InkWell(
            onTap: () {

            },
            child: ListTile(
              title: Text('abcd'),
              leading: Icon(
                Icons.threesixty,
                color: Colors.teal,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('abcd'),
              leading: Icon(
                Icons.build,
                color: Colors.teal,
              ),
            ),
          ),
          InkWell(
            onTap: (
                ) {

            },
            child: ListTile(
              title: Text('Abcd'),
              leading: Icon(
                Icons.build,
                color: Colors.teal,
              ),
            ),
          ),
          Divider(
            color: Colors.teal,
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('abcd'),
              leading: Icon(
                Icons.build,
                color: Colors.teal,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Abcd'),
              leading: Icon(
                Icons.build,
                color: Colors.teal,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bodyFun()
  {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(12),
          child: Text("RENT YOUR PROPERTY WHEN YOU ARE READY", style: TextStyle(fontSize: 20,fontFamily: 'RobotoMono',fontStyle: FontStyle.italic,fontWeight:FontWeight.w700 )),
      ),
          Container(
            margin: EdgeInsets.all(20),
            child:
              RaisedButton(

                textColor: Colors.white,
                color: Colors.black26,
                onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (TabBarDemo())),
                  );
                },
                child: new Text("check your assured rent",style: TextStyle(fontSize: 20),),
              ),
            
          ),
          Container(
            margin: EdgeInsets.only(top: 250,left: 30),
               child: Text('''Need help listning
    your property ?''',
                 style: TextStyle(fontSize: 20),),
                ),
          Container(

            margin: EdgeInsets.only(left: 30),
            padding: EdgeInsets.all(10),
            child:
            RaisedButton(

              textColor: Colors.white,
              color: Colors.black26,
              onPressed: ()
              {
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => (MyStatefulWidget())),
//                );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (MyStatefulWidget())),
                );
              },
              child: new Text("Submit your query",style: TextStyle(fontSize: 20),),
            ),

          ),

         ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[400],
        title: Text("HOME",style: TextStyle( fontSize: 20)),
        actions: <Widget>[
          InkWell(
            child:Icon(Icons.search),

          )
        ],

      ),
      drawer: drawerFun(),
      body: bodyFun(),
    );
  }
}
