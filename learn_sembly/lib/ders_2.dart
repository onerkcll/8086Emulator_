import 'package:flutter/material.dart';

class IkinciDers extends StatefulWidget {
  const IkinciDers({ Key? key }) : super(key: key);

  @override
  IkinciDersState createState() => IkinciDersState();
}

class IkinciDersState extends State<IkinciDers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010a43),
      appBar: AppBar(
        title: Text("DERS 2"),
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
                      "8086 CPU:",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        fontFamily: 'Salsa',
                      ),
                    ),
                    subtitle: Text(
                      "Intel tarafından 1978 yılında piyasaya çıkarılan 16 bitlik bir işlemcidir.\n Basit yapısı dolayısıyla Assembly öğrenmeye başlamak için idealdir.\nTüm dahili kayıtçılar(İngilizce: register), dahili ve harici veriyolları 16 bit uzunluğundadır. 20-bit uzunluğunda bir harici adres yolu 1 MB (bölümlenmiş) fiziksel adres alanı sağlamaktadır (220 = 1,048,576). Standart 40-pin DIP paketine sığabilmek için veri yolu ile adres yolu çoğullanmış(İngilizce: multiplexed) olarak kullanılmaktadır. 16-bit Giriş/Çıkış adres formatı 64 KB ayrılmış Giriş/Çıkış alanı anlamına gelmektedir (216 = 65,536). Dahili adres yolu uzunluğu 16 bit olduğundan maksimum doğrusal adres alanı 64 KB ile sınırlıdır. 64 KB üzerinde programlamak için bölümleme kayıtçılarını(İngilizce: segment register) kullanmak gerektiğinden oldukça kullanışsızdır (80386 ya kadar da böyle devam etmiştir).\nCihazın min ya da max modlarında işletilmesine göre harici işlemler için gerekli işaretleri taşıyan kontrol pinlerinin bazıları birden fazla işleve sahiptir. Min modu küçük, tek işlemcili sistemleri için, Max modu ise orta ölçekli ya da birden çok işlemci kullanan büyük sistemleri için kullanılmaktadır.(kaynak: https://tr.wikipedia.org/wiki/Intel_8086)",
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