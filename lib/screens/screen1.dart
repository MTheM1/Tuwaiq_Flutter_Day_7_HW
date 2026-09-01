import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidget();
  
}
  IconData bellIcon = Icons.notifications_none;
  
class _MyWidget extends State<MyWidget> {
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    int wtaskCount = 5;
    int staskCount = 10;
    int ptaskCount = 8;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF7d65e1),
        elevation: 0,
        centerTitle: true,
        title: Text('Taskly',  style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(bellIcon, color: Colors.white),
            onPressed: () {bellIcon == Icons.notifications_active ? bellIcon = Icons.notifications_none : bellIcon = Icons.notifications_active; setState(() {});},
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Colors.grey,
          width: 0.3,
        ),
      ),
    ),
        child: BottomNavigationBar(
          backgroundColor:  Colors.white,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
                
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Good Morning!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Let\'s get to work!',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                Image.asset('assets/images/icon.png', width: 80, height: 80),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Categories',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                widgetbuild(
                  const Color(0xFFBEDEFF),
                  Icons.assignment,
                  'Work',
                  '$wtaskCount Tasks',
                  screenWidth,
                  screenHeight,
                ),
                widgetbuild(
                  const Color(0xFFCCE4CB),
                  Icons.school,
                  'Study',
                  '$staskCount Tasks',
                  screenWidth,
                  screenHeight,
                ),
                widgetbuild(
                  const Color(0xFFFFD1BD),
                  Icons.favorite,
                  'Personal',
                  '$ptaskCount Tasks',
                  screenWidth,
                  screenHeight,
                ),
              ],
            ),
          ],
        ),
      ),
          );
  }
}

Widget widgetbuild(Color color, IconData icon, String mtext, String stext, double screenWidth, double screenHeight) {

    return Container(
      width: screenWidth * 0.28,
      height: screenWidth * 0.28,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          Text(mtext, style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold)),
          Text(stext, style: TextStyle(fontSize: 12, color: Colors.black)),
        ],
      ),
    );
  }
