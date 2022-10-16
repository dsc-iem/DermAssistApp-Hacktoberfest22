import 'package:derm_assist/main.dart';
import 'package:flutter/material.dart';

class HowtoUse extends StatelessWidget {
  const HowtoUse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return howtouse();
  }
}
class howtouse extends StatefulWidget {
  const howtouse({Key? key}) : super(key: key);

  @override
  State<howtouse> createState() => _howtouseState();
}

class _howtouseState extends State<howtouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFececec),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.00),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
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
                            SizedBox(width: 5.00,),
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
                              onTap: (){
                                Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.all(3.00),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
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
                        Card(
                          elevation: 2.00,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'How DERM-ASSIST Works:',
                                style: TextStyle(
                                  fontSize: 18.00,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.00,),
                              Text(
                                  'Submit information about your skin From your phone or computer, upload 3 photos of your skin condition and answer a few questions. Using what it has learned from millions of skin-related images, DermAssist then looks for signs of various skin conditions in your submitted photos and information. Receive results within a minute. In a matter of seconds, DermAssist provides you with a list of possible matching skin conditions, and helpful information about each.DermAssist is designed for use by:',
                                    style: TextStyle(
                                      fontSize: 16.00,
                                    ),
                              ),
                              Text(
                                '1.People 16 and older',
                                style: TextStyle(
                                  fontSize: 16.00,
                                ),
                              ),
                              Text(
                                  '2.People not looking for a medical diagnosis',
                                style: TextStyle(
                                  fontSize: 16.00,

                                ),
                              ),
                              Image(image: AssetImage('images/dermassist 2.png'),),
                            ],
                          ),
                        ),
                      ],
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


