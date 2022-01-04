import 'dart:io';
import 'package:flutter/material.dart';
import 'package:learn_sembly/ders_secim.dart';
import 'package:learn_sembly/text_editor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010a43),
      appBar: AppBar(
        title: Text("ANASAYFA"),
        centerTitle: true,
        backgroundColor: Color(0xff202D3B),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                "LearnSembly",
                style: TextStyle(
                  fontFamily: 'PermanentMarker',
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                ButtonTheme(
                  minWidth: 150,
                  height: 40,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DersSecimPage()));
                    },
                    child: Text(
                      "DERSLER",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Color(0xffFF2E63),
                  ),
                ),
                ButtonTheme(
                  minWidth: 150,
                  height: 40,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TextEditor()));
                    },
                    child: Text(
                      "EMÜLATÖR",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Color(0xffFF2E63),
                  ),
                ),
                ButtonTheme(
                  minWidth: 150,
                  height: 40,
                  child: FlatButton(
                    onPressed: () {
                      exit(0);
                    },
                    child: Text(
                      "ÇIKIŞ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Color(0xffFF2E63),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                width: 200,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.white38,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Text(
                      "BUY ME A COFFEE",
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 15,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
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
