import 'package:flutter/material.dart';
// import 'main.dart';
import 'Drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFececec),
      body: SafeArea(
          child:SingleChildScrollView(
            child: Column(
              children: <Widget>[

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.00),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => drawer()),
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
                      padding: const EdgeInsets.only(top:30.00),
                      child: Container(
                        height: 100.00,
                        width: 100.00,
                        child: Image(image: AssetImage('images/dermassist.png')),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.00),
                      child: Container(
                        height: 40.00,
                        width: 40.00,
                        child: Image(image: AssetImage('images/useracclogo.png')),

                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.00,),
                const Text(
                  'DERM-ASSIST',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 40.00,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10.00),
                Text(
                  'AI-Based Skin Allergy',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.00,
                    color: Colors.blue[900],
                  ),
                ),

                Text(
                  'Detection',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.00,
                    color: Colors.blue[900],
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  indent: 50.00,
                  endIndent: 50.00,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.00),
                  child: Card(
                    elevation: 5.00,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.00),
                    ),
                    child: const Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Learn about YOUR skin conditions in minutes with DermAssist, a guided skin search app That helps you find personalized information about your skin concerns after three quick photos',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.00,

                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.00,),
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.00),
                  child: Card(
                    child: Image(image: AssetImage('images/Dermassist gif.gif')
                    ),
                    elevation: 5.00,
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
