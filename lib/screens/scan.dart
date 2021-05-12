import 'package:flutter/material.dart';

class ScanScreen extends StatefulWidget {
  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      switch (_selectedIndex) {
        // TODO: Should make this enum
        case 0:
          Navigator.of(context).pushReplacementNamed('/home');
          break;
        case 1:
          Navigator.of(context).pushReplacementNamed('/items');
          break;
        case 2:
          Navigator.of(context).pushReplacementNamed('/scan');
          break;
        case 3:
          Navigator.of(context).pushReplacementNamed('/list');
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan'), // TODO: Edit to make shopping list
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  Container(
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Stock',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 30.0,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'UP',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                              color: Colors.white60,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // child: Text(
                    //   'StockUP',
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontSize: 24,
                    //   ),
                    // ),
                    alignment: Alignment.bottomLeft,
                  ),
                  Container(
                    child: Icon(
                      Icons.person,
                      size: 100.0,
                      color: Colors.white,
                    ),
                    alignment: Alignment.bottomLeft,
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.restaurant,
                color: Colors.white,
              ),
              title: Text(
                'My Items',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/items');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
              title: Text(
                'Scan',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/scan');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.list_alt_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Shopping List',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/list');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Items',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_rounded),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            label: 'Shopping List',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: Image.network(
            'https://lh3.googleusercontent.com/UOvkDpe2DZS48fbpP5SNrkg98eSKnwhFqyxCcB-C78HpxDYxGfN_Cz8i8xpGy8qIR93Bo2JQjbyMke9AlSmvVozHnRKb7QiK0p_GpA=w1064-v0'),
      ),
      backgroundColor: Colors.grey.shade900,
    );
  }
}
