import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Product",
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
      body: SizedBox.expand(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Headphone.png',
                ),
              ],
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                  initialChildSize: 0.55,
                  minChildSize: 0.55,
                  maxChildSize: 0.67,
                  builder: (BuildContext c, s) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 10.0)
                          ]),
                      child: ListView(
                        controller: s,
                        children: [
                          Center(
                            child: Container(
                              height: 8,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 1,
                                child: Text(
                                  "i ball headphone",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 1,
                                child: Text(
                                  "10 days left",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Purchase Detail",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                    fontSize: 20),
                                textAlign: TextAlign.start,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 56,
                                    width: 103,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      elevation: 3,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Amazon",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  SizedBox(
                                    height: 56,
                                    width: 114,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      elevation: 3,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "26/12/2021",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  SizedBox(
                                    height: 56,
                                    width: 109,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      elevation: 3,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Rs.1499",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Warranty Details",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                    fontSize: 20),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 227,
                                      width: 180,
                                      child: Image.asset(
                                          "assets/images/warranty.jpg"),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 227,
                                      width: 180,
                                      child: Image.asset(
                                          "assets/images/warranty.jpg"),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 227,
                                      width: 180,
                                      child: Image.asset(
                                          "assets/images/warranty.jpg"),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Reminder",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                        fontSize: 20),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Switch(
                                    value: isSwitched,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched = value;
                                        print(isSwitched);
                                      });
                                    },
                                    activeTrackColor: Colors.lightBlue,
                                    activeColor: Colors.blue,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 56,
                                width: 114,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "10/02/2022",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
