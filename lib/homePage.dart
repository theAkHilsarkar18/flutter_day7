import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shape: Border.all(
              color: Colors.white,
              style: BorderStyle.solid,
              width: 5,
              strokeAlign: StrokeAlign.inside),
          backgroundColor: Colors.teal,
          title: Text("  $i",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30)),
          actions: [
            InkWell(
                onTap: () {
                  setState(() {
                    i = i * 2;
                  });
                },
                child: Text(
                  "2X   ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 5,
                      height: 2),
                )),
            GestureDetector(
              onTap: () {
                setState(() {
                  i = i * 3;
                });
              },
              child: Text(
                "3X   ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 5,
                    height: 2),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  i = i * 4;
                });
              },
              child: Text(
                "4X   ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 5,
                    height: 2),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  i++;
                });
              },
              child: Text(
                "+1   ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 5,
                    height: 2),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  i--;
                });
              },
              child: Text(
                "-1 ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 5,
                    height: 2),
              ),
            ),
          ],
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: InkWell(
              onDoubleTap: () {
                setState(() {
                  i = i * 5;
                });
              },
              child: Text(
                "5X",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 20,
                      blurStyle: BlurStyle.normal,
                      spreadRadius: 10,
                      offset: Offset(10, 8))
                ],
                border: Border.all(
                    color: Colors.white, style: BorderStyle.solid, width: 5),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(colors: [
                  Colors.teal,
                  Colors.tealAccent,
                ])),
          ),
        ),
        backgroundColor: Colors.black12
      ),
    );
  }
}
