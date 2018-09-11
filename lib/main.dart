import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.greenAccent,
        accentColor: Colors.redAccent
      ),
      home: new MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
       drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage('https://i.ytimg.com/vi/xwa1cBWWCVY/hqdefault.jpg'),
                ),
                accountName: Text(
                  "Prabeen",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
                accountEmail: Text(
                  "prabeen.strange@gmail.com",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                )),
            ListTile(
              title: Text('Profile'),
              trailing: Icon(Icons.person),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                
              },
            ),
            ListTile(
              title: Text('News'),
              trailing: Icon(Icons.explore),
              onTap: () {
                Navigator.pop(context);
               
              },
            ),
            ListTile(
              title: Text('Form'),
              trailing: Icon(Icons.edit),
              onTap: () {
                Navigator.pop(context);
             
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // onTap: onTabTapped,
        // currentIndex: _currentIndex, // this will be set when a tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notification'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
               title: Text('Settings'
               ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}