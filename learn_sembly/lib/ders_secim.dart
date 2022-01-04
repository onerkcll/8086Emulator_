import 'package:flutter/material.dart';
import 'package:learn_sembly/ders_1.dart';
import 'package:learn_sembly/ders_2.dart';
import 'package:learn_sembly/ders_3.dart';

class DersSecimPage extends StatelessWidget {
  const DersSecimPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010a43),
      appBar: AppBar(
        title: Text("DERS SEÇİMİ"),
        centerTitle: true,
        backgroundColor: Color(0xff202D3B),
      ),
      body: Center(
        child: Container(
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonTheme(
                minWidth: 150,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BirinciDers()));
                  },
                  child: Center(
                    child: Text(
                      "1. DERS",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  color: Color(0xffFF2E63),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => IkinciDers()));
                },
                child: Center(
                  child: Text(
                    "2. DERS",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                color: Color(0xffFF2E63),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UcuncuDers()));
                },
                child: Center(
                  child: Text(
                    "3. DERS",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                color: Color(0xffFF2E63),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
