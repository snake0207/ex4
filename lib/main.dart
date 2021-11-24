import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:fluttertoast/fluttertoast.dart';

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
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1st Page',
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
      body: Center(
        child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey[300],
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SecondPage()));
            },
            child: const Text('Go to the 2th page ->')),
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

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2st Page'),
        centerTitle: true,
      ),
      body: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.amber[400],
          ),
          onPressed: () {
            // debugPrint('pressed back button 1st page');
            Navigator.pop(context);
          },
          child: const Text('Back to the 1st Page ->')),
    );
  }
}

void showToast() {
  Fluttertoast.showToast(
    msg: 'Toast msg display',
    backgroundColor: Colors.grey.shade600,
    textColor: Colors.white,
    gravity: ToastGravity.TOP_RIGHT,
    toastLength: Toast.LENGTH_LONG,
  );
}
