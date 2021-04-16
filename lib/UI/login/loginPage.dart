import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.electric_bike),
            Text("    MechOnWheels"),
          ],
        )),
        // backgroundColor: Color(0xFF0d011a),
        backgroundColor: Colors.black.withBlue(20),
      ),
      resizeToAvoidBottomInset: false,
      // backgroundColor: Color(0xFF07021c),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                //login screen heading text container
                decoration: BoxDecoration(
                    // color: Colors.red
                    ),
                width: double.infinity,
                margin: EdgeInsets.only(top: 50, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's sign you in.",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(fontSize: 40)
                      ),
                    ),
                    Text(
                      "Welcome rider.",
                      style:GoogleFonts.ubuntu(
                        textStyle: TextStyle(fontSize: 30)
                      )
                    ),
                    
                    Container(
                      // alignment: Alignment.center,
                      child: Hero(
                        tag: 'bikeLogo',
                        child: Image.asset(
                          'assets/path1919.png',
                          height: 200,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // SizedBox(
              //   height: _height * .08,
              // ),
              loginSection(_height, _width, context),
              SizedBox(
                height: 50,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.app_registration,
                    color: Colors.redAccent,
                  ),
                  label: Text(
                    "Dont haven an account yet?\nRegister.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white.withAlpha(80)),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget loginSection(height, width, context) {
    final formKey = GlobalKey();
    String email, password;

    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withBlue(60),
              blurRadius: 10,
              spreadRadius: .5,
            ),
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              spreadRadius: .5,
            ),
            BoxShadow(
              color: Colors.lightBlue,
              blurRadius: 10,
              spreadRadius: .5,
            )
          ],
          borderRadius: BorderRadius.circular(20),
          // color: Color(0xFF0d011a),
          color: Colors.black.withBlue(15)),
      height: 400,
      width: width * .9,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              // margin: EdgeInsets.only(top: 2),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              // inputs
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(bottom: 30, left: 15),
                        child: Text(
                          "Enter your credentials...",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        )),
                    TextFormField(
                      onChanged: (val) {
                        email = val;
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          labelText: "Email",
                          hintText: "Enter your email",
                          // hintStyle: TextStyle(color: Colors.grey.shade400),
                          // labelStyle: TextStyle(color: Colors.grey.shade400),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.blueAccent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.teal))),
                    ),
                    SizedBox(
                      height: height * .04,
                    ),
                    TextFormField(
                      onChanged: (val) {
                        password = val;
                      },
                      style: TextStyle(color: Colors.grey.shade200),
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.vpn_key),
                          labelText: "Password",
                          hintText: "Enter your password",
                          // hintStyle: TextStyle(color: Colors.grey.shade400),
                          // labelStyle: TextStyle(color: Colors.grey.shade400),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.blueAccent)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.blue)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.orangeAccent))),
                    )
                  ],
                ),
              ),
            ),

            // logn btn
            TextButton.icon(
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xFFfafafa),
                  minimumSize: Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              onPressed: () {
                print("email: ${email}\npassword: ${password}");
                Navigator.pushReplacementNamed(context, '/');
              },
              icon: Icon(Icons.login),
              label: Text(
                "Login",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
