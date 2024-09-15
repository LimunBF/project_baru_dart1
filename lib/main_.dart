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
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 248, 251),
      appBar: AppBar(
        title: Text('Welcome To My App', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.teal[200]
      ),

      body: Center(
        child: Text("LIMUN", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 75,color: Colors.blueGrey[400])),
      ),

      floatingActionButton: FloatingActionButton(
          onPressed: (){
            
          },
          backgroundColor: Colors.red.shade100,
          child: Icon(Icons.power_settings_new_sharp),
        ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal[100],
        iconSize: 32,
        elevation: 0.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Tambahkan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Pencarian",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_sharp),
            label: "Profil",
          ),
        ],
      ),

      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children:  [
              ListTile(
                leading: Icon(Icons.favorite_border_sharp),
                title: Text('Favorites'),
                subtitle: Text("Your Favorite Items"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.newspaper),
                title: Text('Newspaper'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text('Search'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Logout'),
                onTap: () {
                  SystemNavigator.pop();
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
}