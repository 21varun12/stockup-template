import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

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
        title: Text('Home'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.only(top: 10, right: 15, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.red.shade300,
                  Colors.redAccent,
                ],
              ),
            ),
            child: ListTile(
              title: Text(
                '1 Item Expired',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Yesterday | Marigold HL Milk',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.only(top: 10, right: 15, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.orangeAccent,
                  Colors.deepOrangeAccent,
                ],
              ),
            ),
            child: ListTile(
              title: Text(
                '2 Items Expiring Soon',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '2 days | Golden Churn Butter Block - Salted',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '3 days | UFC Refresh 100% Natural Coconut Water',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.only(top: 10, right: 15, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.lightGreen,
                  Colors.green.shade800,
                ],
              ),
            ),
            child: ListTile(
              title: Text(
                '107 Items Saved',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Click to view all',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.only(top: 10, right: 15, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey,
                  Colors.blueGrey,
                ],
              ),
            ),
            child: ListTile(
              title: Text(
                'Monthly Savings',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              subtitle: LineChartSample2(),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.only(top: 10, right: 15, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue.shade200,
                  Colors.indigo,
                ],
              ),
            ),
            child: ListTile(
              title: Text(
                '1 Shared List',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Click to view',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
    );
  }
}

class LineChartSample2 extends StatefulWidget {
  @override
  _LineChartSample2State createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                color: Color(0x0037434d)),
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 18.0, left: 12.0, top: 24, bottom: 12),
              child: LineChart(
                showAvg ? avgData() : mainData(),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 60,
          height: 34,
          child: FlatButton(
            onPressed: () {
              setState(() {
                showAvg = !showAvg;
              });
            },
            child: Text(
              'avg',
              style: TextStyle(
                  fontSize: 12,
                  color:
                      showAvg ? Colors.white.withOpacity(0.5) : Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0x0037434d),
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0x0037434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '1';
              case 3:
                return '3';
              case 5:
                return '5';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true, border: Border.all(color: Colors.white, width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 4),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors:
                gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }

  LineChartData avgData() {
    return LineChartData(
      lineTouchData: LineTouchData(enabled: false),
      gridData: FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: const Color(0x0037434d),
            strokeWidth: 1,
          );
        },
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: const Color(0x0037434d),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
              color: Color(0x0037434d),
              fontWeight: FontWeight.bold,
              fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0x0037434d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 28,
          margin: 12,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border.all(color: const Color(0x0037434d), width: 1)),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3.44),
            FlSpot(2.6, 3.44),
            FlSpot(4.9, 3.44),
            FlSpot(6.8, 3.44),
            FlSpot(8, 3.44),
            FlSpot(9.5, 3.44),
            FlSpot(11, 3.44),
          ],
          isCurved: true,
          colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2),
          ],
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(show: true, colors: [
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)
                .withOpacity(0.1),
            ColorTween(begin: gradientColors[0], end: gradientColors[1])
                .lerp(0.2)
                .withOpacity(0.1),
          ]),
        ),
      ],
    );
  }
}

class HomeScreenPrev extends StatelessWidget {
  const HomeScreenPrev({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 250.0,
          margin: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Card(
                  margin: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.grey, Colors.blueGrey.shade700]),
                    ),
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'My',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: 'Stats',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  margin: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.grey, Colors.blueGrey.shade700]),
                    ),
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'My',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: 'Stats',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 200.0,
          margin: EdgeInsets.symmetric(
            vertical: 0.0,
            horizontal: 10.0,
          ),
          child: Row(
            children: [
              Expanded(
                child: Card(
                  margin: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.grey, Colors.blueGrey.shade700]),
                    ),
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'My',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: 'Stats',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 250.0,
          margin: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Card(
                  margin: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.grey, Colors.blueGrey.shade700]),
                    ),
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'My',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: 'Stats',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  margin: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.grey, Colors.blueGrey.shade700]),
                    ),
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'My',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: 'Stats',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 250.0,
          margin: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Card(
                  margin: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.grey, Colors.blueGrey.shade700]),
                    ),
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'My',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: 'Stats',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  margin: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [Colors.grey, Colors.blueGrey.shade700]),
                    ),
                    child: Center(
                      child: Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'My',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: 'Stats',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
