import 'package:doctor/screens/products_overview_screen.dart';
import 'package:doctor/screens/signinpage.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF16161a),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  iconSize: 35,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Text(
              "Welcome !",
              style: TextStyle(
                  height: 1.2,
                  fontWeight: FontWeight.normal,
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'Poppins'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Join with us.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.white,
                  fontFamily: 'Poppins'),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 160, left: 30, right: 30),
            decoration: BoxDecoration(
              color: Color(0xFF303134),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: const TextField(
              style: TextStyle(color: Colors.white),
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 14, color: Colors.white70),
                hintText: 'Phone, email or username',
                contentPadding: EdgeInsets.all(20),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 20, left: 30, right: 30),
            decoration: BoxDecoration(
              color: Color(0xFF303134),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            width: 300,
            child: const TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                hintStyle: TextStyle(fontSize: 14, color: Colors.white70),
                hintText: 'Password',
                contentPadding: EdgeInsets.all(20),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 110, left: 5, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                    icon: const Icon(Icons.check_box_outline_blank),
                    color: Colors.white,
                    iconSize: 16,
                    onPressed: () {},
                  ),
                ),
                Text(
                  "I have read and agree with  the ",
                  style: TextStyle(color: Color(0xFFfffffe), fontSize: 12),
                ),
                Text(
                  " terms and conditions",
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFFfffffe),
                              Color(0xFFfffffe),
                              Color(0xFFfffffe),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                            top: 16, bottom: 16, right: 140, left: 140),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignIn()),
                        );
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
