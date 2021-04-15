import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:notification/Firebase/Service/warrantyUpdatorFirebaseServices.dart';
import 'Firebase/Model/warrantyUpdatorProductModel.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  String dropdownValue = 'Usual Product';
  String dropdownValue1 = '25/10/2020';
  String dropdownValue2 = '6 Months';
  DatabaseServices service = DatabaseServices();

  var productController = TextEditingController();
  var descriptionController = TextEditingController();
  var priceController = TextEditingController();
  var placeController = TextEditingController();

  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future upload(filePath) async {
    File file = File(filePath);
    firebase_storage.FirebaseStorage storage =
        firebase_storage.FirebaseStorage.instance;
    firebase_storage.ListResult result =
        await firebase_storage.FirebaseStorage.instance.ref().listAll();
    result.items.forEach((firebase_storage.Reference ref) {
      print('Found file: $ref');
    });

    result.prefixes.forEach((firebase_storage.Reference ref) {
      print('Found directory: $ref');
    });
    try {
      await firebase_storage.FirebaseStorage.instance
          .ref('images/file-to-upload.png')
          .putFile(file);
    } on firebase_core.FirebaseException catch (e) {
      // e.g, e.code == 'canceled'
    }

  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Add Product",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          padding: EdgeInsets.symmetric(
              vertical: deviceWidth * .04, horizontal: deviceWidth * .04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product Name',
                style: TextStyle(
                    color: Color(0xff4E4E4E),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: deviceWidth * .03,
              ),
              Container(
                padding: EdgeInsets.only(left: 12),
                width: deviceWidth * .9,
                height: deviceHeight * .070,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  controller: productController,
                  decoration: InputDecoration(
                    hintText: "Eg : Car",
                    hintStyle: TextStyle(color: Color(0xffB9B9B9)),
                    enabledBorder: InputBorder.none,
                    //disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    //contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
              SizedBox(
                height: deviceHeight * .050,
              ),
              Text(
                'Description',
                style: TextStyle(
                    color: Color(0xff4E4E4E),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: deviceWidth * .03,
              ),
              Container(
                padding: EdgeInsets.only(left: 12),
                width: deviceWidth * .9,
                height: deviceHeight * .1,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    hintText: "Eg : Lorem Ipsum dolor sit amet…...",
                    hintStyle: TextStyle(color: Color(0xffB9B9B9)),
                    enabledBorder: InputBorder.none,
                    //disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    //contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
              SizedBox(
                height: deviceHeight * .050,
              ),
              Text(
                'Price',
                style: TextStyle(
                    color: Color(0xff4E4E4E),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: deviceWidth * .03,
              ),
              Container(
                padding: EdgeInsets.only(left: 12),
                width: deviceWidth * .9,
                height: deviceHeight * .070,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  controller: priceController,
                  decoration: InputDecoration(
                    hintText: "Eg: ₹ 500",
                    hintStyle: TextStyle(
                      color: Color(0xffB9B9B9),
                    ),
                    enabledBorder: InputBorder.none,
                    //disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    //contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
              SizedBox(
                height: deviceHeight * .050,
              ),
              Text(
                'Category',
                style: TextStyle(
                    color: Color(0xff4E4E4E),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: deviceWidth * .03,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.only(left: 12, right: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue)),
                child: DropdownButton<String>(
                  // hint: Text('Select your business type'),
                  value: dropdownValue,
                  isExpanded: true,
                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                  iconSize: 35,
                  elevation: 16,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                  underline: Container(
                    color: Colors.transparent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                      print(dropdownValue);
                    });
                  },
                  items: <String>['Usual Product', 'Retail', 'Wholesale']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: deviceHeight * .050,
              ),
              Text(
                'Place',
                style: TextStyle(
                    color: Color(0xff4E4E4E),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: deviceWidth * .03,
              ),
              Container(
                padding: EdgeInsets.only(left: 12),
                width: deviceWidth * .9,
                height: deviceHeight * .070,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  controller: placeController,
                  decoration: InputDecoration(
                    hintText:
                        "Eg : Indore Red street shop Rajwada , Amazon online",
                    hintStyle: TextStyle(
                      color: Color(0xffB9B9B9),
                    ),
                    enabledBorder: InputBorder.none,
                    //disabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    //contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
              SizedBox(
                height: deviceHeight * .050,
              ),
              Text(
                'Date Of Purchase',
                style: TextStyle(
                    color: Color(0xff4E4E4E),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: deviceWidth * .03,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.only(left: 12, right: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue)),
                child: DropdownButton<String>(
                  // hint: Text('Select your business type'),
                  value: dropdownValue1,
                  isExpanded: true,
                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                  iconSize: 35,
                  elevation: 16,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                  underline: Container(
                    color: Colors.transparent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue1 = newValue;
                    });
                  },
                  items: <String>['25/10/2020', '26/10/2020', '27/10/2020']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: deviceHeight * .050,
              ),
              Text(
                'Due Period',
                style: TextStyle(
                    color: Color(0xff4E4E4E),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(
                height: deviceWidth * .03,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.only(left: 12, right: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.blue)),
                child: DropdownButton<String>(
                  // hint: Text('Select your business type'),
                  value: dropdownValue2,
                  isExpanded: true,
                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                  iconSize: 35,
                  elevation: 16,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                  underline: Container(
                    color: Colors.transparent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue2 = newValue;
                    });
                  },
                  items: <String>['6 Months', '7 Months', '8 Months']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: deviceHeight * .025,
              ),
              ListTile(title: Text('Image'), trailing: IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: (){
           getImage();
                },
              ),),
              Center(
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    onPressed: () async {
                      upload(_image.path);
                      // await  service.newProductAdded(Products(product_name: productController.text , category: dropdownValue , description: descriptionController.text , price: priceController.text, date_of_purchase: '12 august' , due_period: dropdownValue2 , place: placeController.text , image: _image.path));
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
