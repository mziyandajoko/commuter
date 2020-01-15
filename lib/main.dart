import 'package:flutter/material.dart';
import 'package:golden_Arrow/components/map.dart';
import 'package:golden_Arrow/pages/about.dart';
import 'package:golden_Arrow/pages/chat.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'components/inputField.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Welcom to Golden Arrow'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(7.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Geomap(),
            ),
            InputField(
              title: 'User Location',
            ),
            SizedBox(
              height: 7.0,
            ),
            InputField(
              title: 'Destination',
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(),
              accountEmail: Text('joko.mzee@gmail.com'),
              accountName: Text('Mziyanda Joko'),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Catagories'),
                leading: Icon(Icons.grid_on),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.info),
              ),
            ),
            // onTap: () {

            // },
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatScreen()));
        },
        tooltip: 'chat ',
        child: Icon(Icons.message),
      ),
    );
  }
}
