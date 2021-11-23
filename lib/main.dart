import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'My App',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('카카고',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              debugPrint('logout button pressed');
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      drawer: Drawer(
        elevation: 16.0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text(
                '서,아,주 아빠',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: const Text(
                'snake0207@gmail.com',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onDetailsPressed: () {
                debugPrint('Name or Email pressed..');
              },
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/ninja.png'),
                backgroundColor: Colors.amber,
              ),
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.elliptical(30.0, 30.0),
                  bottomRight: Radius.elliptical(30.0, 30.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey.shade800),
              title: const Text('Home'),
              onTap: () {
                debugPrint('Home menu taped..');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey.shade800),
              title: const Text('Settings'),
              onTap: () {
                debugPrint('Setting menu taped..');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.report, color: Colors.grey.shade800),
              title: const Text('Report'),
              onTap: () {
                debugPrint('Report menu taped..');
              },
              trailing: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
