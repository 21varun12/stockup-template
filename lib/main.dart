import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stockup_template/models/user.dart';
import 'package:stockup_template/screens/auth_change.dart';
import 'package:provider/provider.dart';
import 'package:stockup_template/screens/home/home_screen.dart';
import 'package:stockup_template/screens/home/items_screen.dart';
import 'package:stockup_template/screens/home/scan.dart';
import 'package:stockup_template/screens/home/shopping_list_screen.dart';

import 'package:stockup_template/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser>.value(
      initialData: AppUser(),
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          canvasColor: Colors.blueGrey.shade300,
          scaffoldBackgroundColor: Colors.grey.shade200,
          primaryColor: Colors.blueGrey.shade400,
          cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.blueGrey.shade50,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            unselectedIconTheme: IconThemeData(
              color: Colors.grey.shade400,
              // size: 25.0,
            ),
            selectedIconTheme: IconThemeData(
              color: Colors.black,
              // size: 25.0,
            ),
            showSelectedLabels: false,
            showUnselectedLabels: false,
          ),
        ),
        routes: {
          '/home': (context) => HomeScreen(),
          '/items': (context) => ItemsScreen(),
          '/scan': (context) => ScanScreen(),
          '/list': (context) => ShoppingListScreen(),
        },
        home: AuthChange(),
      ),
    );
  }
}

class MyItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Items'),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.blueAccent,
                  Colors.indigo.shade800,
                ],
              ),
            ),
            padding: const EdgeInsets.all(8),
            height: 200.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.done,
                    size: 150,
                    color: Colors.white,
                  ),
                  Text(
                    'My Items',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.blueAccent,
                  Colors.indigo.shade800,
                ],
              ),
            ),
            padding: const EdgeInsets.all(8),
            height: 200.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.done,
                    size: 150,
                    color: Colors.white,
                  ),
                  Text(
                    'My Items',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.blueAccent,
                  Colors.indigo.shade800,
                ],
              ),
            ),
            padding: const EdgeInsets.all(8),
            height: 200.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.done,
                    size: 150,
                    color: Colors.white,
                  ),
                  Text(
                    'My Items',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.blueAccent,
                  Colors.indigo.shade800,
                ],
              ),
            ),
            padding: const EdgeInsets.all(8),
            height: 200.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.done,
                    size: 150,
                    color: Colors.white,
                  ),
                  Text(
                    'My Items',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
