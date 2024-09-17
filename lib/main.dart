import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 248, 251),
      appBar: AppBar(
        title: Text('K3522040', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.teal[200]
      ),

    body: Center(
      child: Text(
        "Lintang Mukti Nugroho",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 45,
          color: Colors.blueGrey[400],
          letterSpacing: 3,
          height: 1.1,
          shadows: [
            Shadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset(2, 1),
              blurRadius: 3,
            ),
          ],
        ),
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        textDirection: TextDirection.ltr,
        textScaler: TextScaler.linear(1),
      ),
    ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.cyan[300],
        icon: Icon(Icons.power_settings_new_sharp, color: Colors.white,),
        label: Text('Cari', style: TextStyle(color: Colors.white)),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.teal[200], 
          highlightColor: Colors.blue[400],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.teal[100],
          iconSize: 32,
          elevation: 0.0,
          selectedItemColor: _currentIndex == 0 ? Colors.blue : Colors.red,  // Set label color
          unselectedItemColor: Colors.blueGrey[600], // Set label color
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.add, 
              color: _currentIndex == 0 ? Colors.blue : Colors.blueGrey[600]), // Icon color change
              label: "Tambahkan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.delete_sharp, 
              color: _currentIndex == 1 ? Colors.red : Colors.blueGrey[600]), // Icon color change (first for selected, second for unselected)
              label: "Hapus",
            ),
          ],
        ),
      ),

      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children:  [
              ListTile(
                leading: Icon(Icons.list_sharp),
                title: Text('Lists'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.login_sharp),
                title: Text('Login'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}