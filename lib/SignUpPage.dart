import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';
import 'SignInPage.dart';
import 'HomePage.dart';

var passwordSignUp = TextEditingController();
var username = TextEditingController();
var phNUmber = TextEditingController();
var emailID = TextEditingController();

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _securePass = true;
  IconData passIcon = Icons.remove_red_eye;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFececec),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.00),
                child: Container(
                  height: 100.00,
                  width: 100.00,
                  child: Image(image: AssetImage('images/dermassist.png')),
                ),
              ),
              const SizedBox(
                height: 10.00,
              ),
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
              Name(
                name: "EMAIL ID:",
              ),
              FeildOfText(
                controller: emailID,
                texttype: TextInputType.emailAddress,
              ),
              Name(
                name: "USERNAME:",
              ),
              FeildOfText(
                controller: username,
                texttype: TextInputType.name,
              ),
              Name(
                name: "PHONE NUMBER:",
              ),
              FeildOfText(
                controller: phNUmber,
                texttype: TextInputType.number,
              ),
              Name(
                name: "PASSWORD:",
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passwordSignUp,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _securePass = !_securePass;
                          if (_securePass == true) {
                            passIcon = Icons.remove_red_eye_outlined;
                          } else {
                            passIcon = Icons.remove_red_eye;
                          }
                        });
                      },
                      icon: Icon(
                        passIcon,
                        color: Colors.black,
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _securePass,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => HomePage())),
                  child: Container(
                    height: size.height / 18,
                    width: size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.green,
                              offset: Offset(0, 2),
                              blurRadius: 20.0)
                        ]),
                    child: const Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                "OR",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(SimpleIcons.facebook, size: size.height / 17),
                    ),
                    SizedBox(
                      width: size.width / 13,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(SimpleIcons.google, size: size.height / 17),
                    ),
                    SizedBox(
                      width: size.width / 13,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(SimpleIcons.twitter, size: size.height / 17),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.black,
                indent: 50.00,
                endIndent: 70.00,
              ),
              const Text(
                "Already have an Account?",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
              ),
              InkWell(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SignInPage())),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Widget Created for Text Field
class FeildOfText extends StatelessWidget {
  const FeildOfText({
    Key? key,
    required this.texttype,
    required this.controller,
  }) : super(key: key);

  final TextInputType texttype;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        style: const TextStyle(
          fontSize: 25,
        ),
        controller: controller,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
        keyboardType: texttype,
        obscureText: false,
      ),
    );
  }
}

// Widget created for giving names
class Name extends StatelessWidget {
  Name({
    Key? key,
    this.name = "",
  }) : super(key: key);

  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          name,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
