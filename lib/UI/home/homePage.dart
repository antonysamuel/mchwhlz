import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> myBikes = ["Himalayan", "RR 310"];
  String currentBike = "Himalayan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.electric_bike,
              color: Colors.black,
            ),
            Text(
              "  MechOnWheels",
              style: TextStyle(color: Colors.black),
            ),
          ],
        )),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 10, left: 20),
              //hello text
              child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              letterSpacing: 3),
                        ),
                        Text("Abin",
                            style: GoogleFonts.permanentMarker(
                              textStyle: TextStyle(
                                  color: Colors.black,

                                  // fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                  letterSpacing: 5),
                            ))
                      ],
                    ),
                    Container(
                      // alignment: Alignment.center,
                      child: Hero(
                        tag: 'bikeLogo',
                        child: Image.asset(
                          'assets/logo2.png',
                          height: 200,
                        ),
                      ),
                    )
                  ],
                ),
              )),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                // color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.grey],
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 0.0)),
                boxShadow: [
                  // BoxShadow(
                  //     blurRadius: 8,
                  //     color: Colors.grey.shade400,
                  //     spreadRadius: 7),
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.black.withAlpha(50),
                      spreadRadius: 3),
                ]),
            child: Column(
              children: [
                SizedBox(
                  height: 85,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Icon(
                        Icons.map,
                        color: Colors.white,
                      ),
                      Text(
                        "Kochi",
                        style: GoogleFonts.ubuntu(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                      Text(
                        "Kerala",
                        style: GoogleFonts.ubuntu(
                            textStyle:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "My Bike",
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.5,
                              fontSize: 20),
                        ),
                      ),
                      DropdownButton(
                        // dropdownColor: Color(0xff05e6c0),
                        dropdownColor: Colors.pink.withOpacity(.5),
                        value: currentBike,
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              color: Colors.grey.shade400, letterSpacing: 2),
                        ),
                        onChanged: (newValue) {
                          setState(() {
                            currentBike = newValue;
                          });
                        },
                        items: myBikes.map((valueItem) {
                          return DropdownMenuItem(
                            value: valueItem,
                            child: Text(valueItem),
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            width: double.infinity,
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                bottomCard("Road Side\nAssistance",
                    Colors.green.shade300.withOpacity(.9)),
                bottomCard(
                    "General Service", Colors.pink.shade300.withOpacity(.9)),
                bottomCard("Find Nearby\nWorkshops",
                    Colors.blue.shade300.withOpacity(.9)),
                bottomCard("Nearby Fuel\nStations",
                    Colors.grey.shade900.withOpacity(.9)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget bottomCard(txt, color) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 150,
      height: 200,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.traffic),
          Text(
            txt,
            style: GoogleFonts.ubuntu(
                textStyle:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }
}
