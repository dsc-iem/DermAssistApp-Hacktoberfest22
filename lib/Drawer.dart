import 'package:derm_assist/1.HowtoUse.dart';
import 'package:flutter/material.dart';
import 'package:derm_assist/1.HowtoUse.dart';
import 'package:image_picker/image_picker.dart';

final ImagePicker _picker = ImagePicker();

class Drawer extends StatelessWidget {
  const Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return drawer();
  }
}

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFececec),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.00),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40.00,
                    width: 40.00,
                    child: Image(image: AssetImage('images/drawer.png')),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Card(
                  elevation: 5.00,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image(
                              image: AssetImage('images/dermassist.png'),
                              height: 60.00,
                              width: 60.00,
                            ),
                            SizedBox(
                              width: 5.00,
                            ),
                            Text(
                              'DERM-ASSIST',
                              style: TextStyle(
                                fontSize: 30.00,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black,
                          indent: 40.00,
                          endIndent: 40.00,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => howtouse()),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(3.00),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFFececec),
                              ),
                              child: Text(
                                '1.How To Use',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.00,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () async {
                              //TODO: Open Gallery and pick Images
                              try {
                                final XFile? image = await _picker.pickImage(
                                    source: ImageSource.gallery);
                              } catch (e) {
                                print(e);
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFFececec),
                              ),
                              padding: EdgeInsets.all(3.00),
                              child: Text(
                                '2.Upload From Gallery',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.00,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () async {
                              //TODO: Open Camera and start scanning image
                              try {
                                final XFile? image = await _picker.pickImage(
                                    source: ImageSource.camera);
                              } catch (e) {
                                print(e);
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFFececec),
                              ),
                              padding: EdgeInsets.all(3.00),
                              child: Text(
                                '3.Scan Image',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.00,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              //TODO: Get result history from database
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFFececec),
                              ),
                              padding: EdgeInsets.all(3.00),
                              child: Text(
                                '4.Results History',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.00,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              //TODO: Get access to settings page
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFFFececec),
                              ),
                              padding: EdgeInsets.all(3.00),
                              child: Text(
                                '5.Settings',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.00,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.00,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.00),
                child: Card(
                  child: Image(image: AssetImage('images/Dermassist gif.gif')),
                  elevation: 5.00,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//TODO: ADD BACKEND
