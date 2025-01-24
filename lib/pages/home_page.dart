import 'package:flutter/material.dart';
import 'package:sorting_visualizer/pages/bubble_sort.dart'; // Import the BubbleSort page

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Homepage",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      drawer: Drawer(   
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,),
              title: Text('Home'),
              onTap: () {
                // Close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.sort),
              title: Text('Bubble Sort Algorithm'),
              onTap: () {
                // Navigate to BubbleSort page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BubbleSort(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.sort),
              title: Text('Coming soon'),
              onTap: () {
                //TODO: Navigate to new page
                
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "W E L C O M E\n\nThis app demonstrates different algorithms. To select one, check the menu in the upper left! Enjoy!",
            textAlign: TextAlign.center, // Centers the text
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 4, // Adds spacing between letters
              color: Colors.black, // Highlight the word "WELCOME"
            ),
          ),
        ),
      ),
    );
  }
}
