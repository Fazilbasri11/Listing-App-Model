import 'package:doctor/screens/registerpage.dart';
import 'package:doctor/screens/signinpage.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  // String lorem = loremIpsum(words: 60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF16161a),
      body: Column(
        children: [
          Container(
            height: 400,
            margin: EdgeInsets.only(top: 0, right: 10, left: 10),
            child: Image.asset("images/doc.png"),
            decoration: BoxDecoration(
                /*  color: Color(0xFF7f5af0), */
                borderRadius: BorderRadius.circular(24)),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Text(
              "Find Your Doctor \n For Mental Healthy.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Product'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "Lorem ipsum, atau ringkasnya lipsum,\nadalah teks standar yang \n ditempatkan untuk.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Product',
                height: 1.5,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
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
                          padding: const EdgeInsets.only(right: 40, left: 40),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF303134),
                                Color(0xFF303134),
                                Color(0xFF303134),
                              ],
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero)),
                          padding: const EdgeInsets.only(right: 40, left: 40),
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
                          'Sign In',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
