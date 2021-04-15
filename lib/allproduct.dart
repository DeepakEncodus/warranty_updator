import 'package:flutter/material.dart';

class Allproduct extends StatefulWidget {
  @override
  _AllproductState createState() => _AllproductState();
}

class _AllproductState extends State<Allproduct> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Products",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: ImageIcon(
                AssetImage(
                  'assets/images/Search.png',
                ),
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/search");
              }),
          Row(
            children: [
              IconButton(
                  icon: ImageIcon(
                    AssetImage(
                      'assets/images/Notification.png',
                    ),
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/notification");
                  }),
            ],
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage(
      //           'assets/images/home.png',
      //         ),
      //         color: Colors.black,
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage(
      //           'assets/images/application.png',
      //         ),
      //         color: Colors.black,
      //       ),
      //       label: 'Application',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage(
      //           'assets/images/add.png',
      //         ),
      //         color: Color(0xFF31ACCC),
      //       ),
      //       label: 'Add',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage(
      //           'assets/images/time.png',
      //         ),
      //         color: Colors.black,
      //       ),
      //       label: 'Time',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage(
      //           'assets/images/profile.png',
      //         ),
      //         color: Colors.black,
      //       ),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Color(0xFF31ACCC),
      //   onTap: _onItemTapped,
      // ),
      body: Center(
        child: Container(
          child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.all(deviceWidth * .015),
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.grey),
                  //   borderRadius: BorderRadius.circular(20),
                  // ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                    child: Column(children: [
                      GestureDetector(
                          onTap: () => Navigator.of(context).pushNamed("/b"),
                          child: Image.asset('assets/images/headphones.png')),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'I ball headphone',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue),
                      ),
                    ]),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
