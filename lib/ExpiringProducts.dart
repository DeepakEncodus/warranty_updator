import 'package:flutter/material.dart';

class ExpiringProducts extends StatefulWidget {
  @override
  _ExpiringProductsState createState() => _ExpiringProductsState();
}

class _ExpiringProductsState extends State<ExpiringProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Expiring Products",
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
        body: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Maruti Swift 2021',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF31ACCC)),
                              ),
                              Text(
                                "update your details so,information\n will remain up to date.",
                                style: TextStyle(
                                  color: Color(0xffB9B9B9),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'You will get reminder next week',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/car.png'),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '8',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Colors.red),
                            ),
                            SizedBox(
                              height: 5,
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
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
