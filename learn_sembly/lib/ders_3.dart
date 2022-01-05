import 'package:flutter/material.dart';

class UcuncuDers extends StatefulWidget {
  const UcuncuDers({ Key? key }) : super(key: key);

  @override
  _UcuncuDersState createState() => _UcuncuDersState();
}

class _UcuncuDersState extends State<UcuncuDers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010a43),
      appBar: AppBar(
        title: Text("DERS 3"),
        centerTitle: true,
        backgroundColor: Color(0xff202D3B),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    tileColor: Color(0xff0B1B81),
                    title: Text(
                      "UCUNCU DERS ICERIGI",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontFamily: 'Salsa',
                      ),
                    ),
                    subtitle: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi commodo velit a felis feugiat, vel lobortis sapien dapibus. Sed sed placerat r vitae vel magna. Phasellus vesmassa. Sed bibendum vitae lorharetra. Cras id odio euismod, accumsan ante et, lobortis urna. Nam nec felis magna. Ut quis velit in sem bibendum suscipit a eu nuncurna. Nam nec felis magna. Ut quis velit in sem bibendum suscipit a eu nunc..",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Salsa',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
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
                  color: Colors.black,
                  border: Border.all(
                    width: 1,
                    color: Colors.white38,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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