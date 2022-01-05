import 'package:flutter/material.dart';

class BirinciDers extends StatefulWidget {
  const BirinciDers({Key? key}) : super(key: key);

  @override
  BirinciDersState createState() => BirinciDersState();
}

class BirinciDersState extends State<BirinciDers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010a43),
      appBar: AppBar(
        title: Text("DERS 1"),
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
                      "BIRINCI DERS ICERIGI",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontFamily: 'Salsa',
                      ),
                    ),
                    subtitle: Text(
                      "Assembly Language(Assembly Dili) Nedir? \n Assembly dili düsük seviyeli bir programlama dilidir. Bu dili anlamak ve ögrenmek için önce bilgisayar yapısı hakkında bilginiz olması gerek. \n Buraya resim gelecek \n  Resimde görülen sistem yolu çesitli parçaları birbirine bağlar. CPU yani merkezi işlem birimi bilgisayarın kalbidir, çoğu işlem burada gerçekleşir. RAM ise programların CPU tarafından çalıştırılabilmesi için yüklendiği yerdir. \n  Neden Assembly Dili? \n Assembly dili tüm programlama dilleri arasında belkide en zor dillerden biridir fakat sunu bilmekte fayda var bugün kullanılan çoğu yüksek seviyeli dilin temelinde assembly vardır.  Assembly bir yazılımcının bilgisayara ve yazdığı koda bakış açısını değiştirir. Ve tabi ki hızından bahsetmezsek olmaz Assembly dili piyasadaki en hızlı dillerden biridir.",
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
