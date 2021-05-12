import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsScreen extends StatefulWidget {
  @override
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  int _selectedIndex = 1;

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

  final List<Card> items = [
    Card(
      color: Colors.red.shade50,
      child: ListTile(
        leading: Image.network(
            'https://media.nedigital.sg/fairprice/fpol/media/images/product/XL/131467_XL1.jpg'),
        subtitle: Text('Expired Yesterday!'),
        title: Text('Marigold HL Milk'),
        trailing: Icon(Icons.more_vert),
      ),
    ),
    Card(
      child: ListTile(
        leading: Image.network(
            'https://media.nedigital.sg/fairprice/fpol/media/images/product/XL/467060_XL1_20210510.jpg?w=1200&q=65'),
        subtitle: Text('Expiring in 2 days'),
        title: Text('Golden Churn Butter Block - Salted'),
        trailing: Icon(Icons.more_vert),
      ),
    ),
    Card(
      child: ListTile(
        leading: Image.network(
            'https://media.nedigital.sg/fairprice/fpol/media/images/product/XL/13091134_XL1.jpg?w=1200&q=65'),
        subtitle: Text('Expiring in 3 days'),
        title: Text('UFC Refresh 100% Natural Coconut Water'),
        trailing: Icon(Icons.more_vert),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Items'),
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search my items',
                suffixIcon: Icon(
                  Icons.search
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Dismissible(
                    // TODO: find out what the key does
                    key: UniqueKey(),
                    onDismissed: (direction) {
                      setState(() {
                        items.removeAt(index);
                      });
                      if (direction == DismissDirection.startToEnd) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Moved to list'),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Removed'),
                          ),
                        );
                      }
                    },
                    background: Container(
                      color: Colors.orange,
                    ),
                    secondaryBackground: Container(
                      color: Colors.red,
                    ),
                    child: item);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed('/scan');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
