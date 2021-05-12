import 'package:flutter/material.dart';

class ShoppingListScreen extends StatefulWidget {
  @override
  _ShoppingListScreenState createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  int _selectedIndex = 3;

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
      child: ListTile(
        leading: Image.network(
            'https://media.nedigital.sg/fairprice/fpol/media/images/product/XL/10099606_XL1.jpg?w=1200&q=65'),
        title: Text('Gardenia Enriched White Bread 600g'),
        subtitle: Text('Quantity: 1'),
        trailing: Icon(Icons.more_vert),
      ),
    ),
    Card(
      child: ListTile(
        leading: Image.network(
            'https://media.nedigital.sg/fairprice/fpol/media/images/product/XL/131467_XL1.jpg'),
        title: Text('Marigold HL Milk'),
        subtitle: Text('Quantity: 1'),
        trailing: Icon(Icons.more_vert),
      ),
    ),
  ];

  String dropdownValue = 'My List';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'), // TODO: Edit to make shopping list
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
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton(
                    value: dropdownValue,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey.shade800,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'My List',
                      'Shared List',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blueGrey),
                    ),
                    onPressed: () {},
                    child: Text('Share'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Dismissible(
                    key: UniqueKey(),
                    onDismissed: (direction) {
                      setState(() {
                        items.removeAt(index);
                      });
                      if (direction == DismissDirection.startToEnd) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Removed from list'),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Marked as bought'),
                          ),
                        );
                      }
                    },
                    background: Container(
                      padding: EdgeInsets.only(left: 20.0),
                      alignment: Alignment.centerLeft,
                      color: Colors.red,
                      child: Icon(
                        Icons.delete_outline,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    secondaryBackground: Container(
                      padding: EdgeInsets.only(right: 20.0),
                      alignment: Alignment.centerRight,
                      color: Colors.green,
                      child: Icon(
                        Icons.check_box_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    child: item);
              },
            ),
          ),
          Container(
            child: Text('recommended'.toUpperCase()),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                Card(
                  color: Colors.green.shade50,
                  child: ListTile(
                    leading: Image.network(
                        'https://media.nedigital.sg/fairprice/fpol/media/images/product/XL/131467_XL1.jpg'),
                    title: Text('Marigold HL Milk'),
                    subtitle: Text('Quantity: 1'),
                    trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          items.add(
                            Card(
                              child: ListTile(
                                leading: Image.network(
                                    'https://media.nedigital.sg/fairprice/fpol/media/images/product/XL/131467_XL1.jpg'),
                                title: Text('Marigold HL Milk'),
                                subtitle: Text('Quantity: 1'),
                                trailing: Icon(Icons.more_vert),
                              ),
                            ),
                          );
                        });
                      },
                      child: Icon(Icons.add_circle_outlined),
                    ),
                  ),
                ),
              ],
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
