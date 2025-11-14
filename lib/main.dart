import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'm-Indicator',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {'icon': Icons.train, 'label': 'Local'},
    {'icon': Icons.directions_bus, 'label': 'Bus'},
    {'icon': Icons.train_outlined, 'label': 'Express'},
    {'icon': Icons.directions_transit, 'label': 'MSRTC'},
    {'icon': Icons.chat_bubble, 'label': 'Train Chat'},
    {'icon': Icons.tram, 'label': 'Mono'},
    {'icon': Icons.subway, 'label': 'Metro'},
    {'icon': Icons.local_taxi, 'label': 'Auto'},
    {'icon': Icons.local_taxi_outlined, 'label': 'Cab'},
    {'icon': Icons.directions_boat, 'label': 'Ferry'},
    {'icon': Icons.work, 'label': 'Jobs'},
    {'icon': Icons.map, 'label': 'Map'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.menu, color: Colors.white),
                SizedBox(width: 10),
                Text('Mumbai', style: TextStyle(color: Colors.white)),
              ],
            ),
            Row(
              children: [
                Text('News', style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  ),
                  onPressed: () {},
                  child: Text(
                    'ResumeDB',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Grid Menu
            Padding(
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: menuItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemBuilder: (context, index) {
                  final item = menuItems[index];
                  return GestureDetector(
                    onTap: () {
                      if (item['label'] == 'Local') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LocalTrainsPage()),
                        );
                      }
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[900],
                          radius: 28,
                          child: Icon(item['icon'], color: Colors.yellow, size: 30),
                        ),
                        SizedBox(height: 8),
                        Text(
                          item['label'],
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Advertisement Section
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 100,
                          color: Colors.grey[700],
                          child: Center(
                            child: Text(
                              'DELIVERY\nON TRAIN',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.local_pizza,
                                    color: Colors.red, size: 30),
                                SizedBox(width: 5),
                                Text(
                                  "Domino's Pizza",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text('Installed',
                                style: TextStyle(color: Colors.grey)),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              child: Text('Open'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Other section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'OTHER',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.grey[850],
              leading: Icon(Icons.map_outlined, color: Colors.green),
              title: Text('Land Survey Map',
                  style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.chevron_right, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class LocalTrainsPage extends StatelessWidget {
  final List<String> stations = [
    'Churchgate',
    'Marine Lines',
    'Charni Road',
    'Grant Road',
    'Mumbai Central',
    'Mahalakshmi',
    'Lower Parel',
    'Prabhadevi',
    'Dadar',
    'Matunga Road',
    'Mahim Jn'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'STATION',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              color: Colors.grey[900],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Buy Ticket',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Lost & Found',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  Container(height: 1, color: Colors.grey[600]),
                ],
              ),
            ),

            // Western Line Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Western Line',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),

                  // Station Type Header
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[600]!),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _headerBox('STATIONS', Colors.grey[800]!, width: 140),
                          _headerBox('WESTERN', Colors.blue[800]!),
                          _headerBox('CENTRAL', Colors.orange[800]!),
                          _headerBox('HARBOUR', Colors.yellow[700]!),
                          _headerBox('TRANS', Colors.green[700]!),
                          _headerBox('URAN', Colors.purple[700]!),
                          _headerBox('PUNE', Colors.red[700]!),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),

                  // ✅ Fixed: Stations List (scrollable)
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[600]!),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: stations.map((station) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: IntrinsicWidth(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 140,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 12),
                                  color: Colors.grey[900],
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: false,
                                        onChanged: (bool? value) {},
                                        fillColor: MaterialStateProperty.all(
                                            Colors.grey[700]),
                                        checkColor: Colors.white,
                                      ),
                                      SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          station,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                _colorBox(Colors.blue[800]!),
                                _colorBox(Colors.orange[800]!),
                                _colorBox(Colors.yellow[700]!),
                                _colorBox(Colors.green[700]!),
                                _colorBox(Colors.purple[700]!),
                                _colorBox(Colors.red[700]!),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _headerBox(String text, Color color, {double width = 90}) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: 8),
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ),
    );
  }

  Widget _colorBox(Color color) {
    return Container(
      width: 90,
      height: 48,
      color: color,
    );
  }
}
