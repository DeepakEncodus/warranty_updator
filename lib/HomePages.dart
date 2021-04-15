import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:notification/Firebase/Model/warrantyUpdatorProductModel.dart';
import 'package:notification/Firebase/Model/warrantyUpdatorUserModel.dart';
import 'package:notification/Firebase/Service/warrantyUpdatorFirebaseServices.dart';
import 'allproduct.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _selectedIndex = 0;

  // final List<Widget> _children = <Widget>[
  //   Allproduct(),
  // ];
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
  DatabaseServices service = DatabaseServices();

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    service.newUserAdded(Users(user_id: "1" , user_name: "deepak" , email_id: "dminj" , profile_pic: "1234"));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
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
                AssetImage('assets/images/Search.png'),
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
      //   currentIndex: _selectedIndex,
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
      //   selectedItemColor: Color(0xFF31ACCC),
      //   onTap: _onItemTapped,
      // ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(deviceWidth * .05),
          width: deviceWidth,
          height: deviceHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Expiring Products',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                primary: false,
                child: Row(
                  children: [
                    Container(
                      width: deviceWidth * .4,
                      margin: EdgeInsets.only(
                        top: deviceWidth * .05,
                        right: deviceWidth * .05,
                      ),
                      padding: EdgeInsets.all(deviceWidth * .025),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                              onTap: () =>
                                  Navigator.of(context).pushNamed("/b"),
                              child:
                                  Image.asset('assets/images/headphones.png')),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'i ball headphone',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2.5,
                          ),
                          Text(
                            '10 Days Left',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.red),
                          ),
                          SliderTheme(
                              data: SliderThemeData(
                                  trackHeight: 10,
                                  thumbShape: SliderComponentShape.noThumb),
                              child: Slider(
                                value: 40,
                                onChanged: (value) {},
                                min: 0,
                                max: 100,
                                activeColor: Color(0xFF31ACCC),
                                inactiveColor: Colors.grey.shade200,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('10 days',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.red)),
                              Text('365 days',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: deviceWidth * .4,
                      margin: EdgeInsets.only(
                          top: deviceWidth * .05, right: deviceWidth * .05),
                      padding: EdgeInsets.all(deviceWidth * .025),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                              onTap: () =>
                                  Navigator.of(context).pushNamed("/b"),
                              child:
                                  Image.asset('assets/images/headphones.png')),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'i ball headphone',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2.5,
                          ),
                          Text(
                            '10 Days Left',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.red),
                          ),
                          SliderTheme(
                              data: SliderThemeData(
                                  trackHeight: 10,
                                  thumbShape: SliderComponentShape.noThumb),
                              child: Slider(
                                value: 40,
                                onChanged: (value) {},
                                min: 0,
                                max: 100,
                                activeColor: Color(0xFF31ACCC),
                                inactiveColor: Colors.grey.shade200,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('10 days',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.red)),
                              Text('365 days',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: deviceWidth * .4,
                      margin: EdgeInsets.only(
                          top: deviceWidth * .05, right: deviceWidth * .05),
                      padding: EdgeInsets.all(deviceWidth * .025),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(0, 3),
                          )
                        ],
                        border: Border.all(color: Colors.grey[300]),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                              onTap: () =>
                                  Navigator.of(context).pushNamed("/b"),
                              child:
                                  Image.asset('assets/images/headphones.png')),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'i ball headphone',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2.5,
                          ),
                          Text(
                            '10 Days Left',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.red),
                          ),
                          SliderTheme(
                              data: SliderThemeData(
                                  trackHeight: 10,
                                  thumbShape: SliderComponentShape.noThumb),
                              child: Slider(
                                value: 40,
                                onChanged: (value) {},
                                min: 0,
                                max: 100,
                                activeColor: Color(0xFF31ACCC),
                                inactiveColor: Colors.grey.shade200,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('10 days',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.red)),
                              Text('365 days',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceWidth * .1,
              ),
              Text(
                'Vehicles',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: deviceWidth * .05,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(deviceWidth * .05),
                  width: deviceWidth,
                  color: Color(0xFF31ACCC).withOpacity(.6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('You will get reminder\nnext week',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Image.asset('assets/images/car.png')
                        ],
                      ),
                      Text(
                        'update your details so information\nwill remain up to date',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: deviceWidth * .05,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: deviceWidth * .05,
                            right: deviceWidth * .05,
                            top: deviceWidth * .025,
                            bottom: deviceWidth * .075),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Maruti Swift 2021',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF31ACCC)),
                            ),
                            SizedBox(
                              height: deviceWidth * .05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image.asset('assets/images/service.png'),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Service',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 30,
                                          color: Color(0xFF2DC6FF)),
                                    ),
                                    Text(
                                      'Months',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF31ACCC)),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset('assets/images/puc.png'),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'PUC',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: deviceWidth * .05),
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              vertical: BorderSide(
                                                  color: Color(0xFF31ACCC)))),
                                      child: Column(
                                        children: [
                                          Text(
                                            '220',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 30,
                                                color: Color(0xFF2DC6FF)),
                                          ),
                                          Text(
                                            'Days',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF31ACCC)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset('assets/images/insurance.png'),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Insurance',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '6',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 30,
                                          color: Colors.red),
                                    ),
                                    Text(
                                      'Days',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF31ACCC)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // CarouselSlider(
              //   options: CarouselOptions(height: deviceHeight * .5),
              //   items: [1, 2, 3, 4, 5].map((i) {
              //     return Builder(
              //       builder: (BuildContext context) {
              //         return Container(
              //             width: MediaQuery.of(context).size.width,
              //             margin: EdgeInsets.symmetric(horizontal: 5.0),
              //             decoration: BoxDecoration(color: Colors.amber),
              //             child: Text(
              //               'text $i',
              //               style: TextStyle(fontSize: 16.0),
              //             ));
              //       },
              //     );
              //   }).toList(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
