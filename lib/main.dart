import 'dart:ffi';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Transform.scale(
                scaleX: -1,
                child: Icon(
                  Icons.people_alt,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Text(
              'BeReal.',
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'Genera',
                      fontWeight: FontWeight.w800)),
            ),
            Container(
              width: 30,
              height: 30,
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/avatar.jpeg'),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('My Friends',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontFamily: 'Genera',
                          fontWeight: FontWeight.w600),
                    )),
                SizedBox(
                  width: 20,
                ),
                Text('Discovery',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Color.fromARGB(255, 137, 136, 136),
                          fontSize: 19,
                          fontFamily: 'Genera',
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          ),
          Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Stack(children: [
                    Container(
                        width: 120,
                        height: 170,
                        foregroundDecoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          image: DecorationImage(
                              image: AssetImage('lib/assets/big.jpg'),
                              fit: BoxFit.fill),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 40,
                        height: 55,
                        foregroundDecoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          image: DecorationImage(
                              image: AssetImage('lib/assets/small.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  ]),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
