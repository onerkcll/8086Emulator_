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
                      "Önceki dersimizde Assembly dili ve temel olarak bilgisayarın yapısını öğrendik şimdi de gelin bu bilgilerimizi derinleştirelim...Registerlar(Kaydediciler):Registerlar işlemcinin içinde bulunan ve diğer depolama birimlerine kıyasla(RAM, Hard Disk, SSD, vb) çok düşük depolama alanları olan hafıza birimleridirler.Depolama alanlarının kısıtlı olmasına karşı hızları, diğer depolama birimleriyle kıyaslanmayacak kadar yüksektir.Genel Kullanım Kaydedicileri:8086 CPU 8 adet 16bitlik genel kullanım registerına sahiptir ve her register kendi adına sahiptir.AX-İşlem registerıdır aritmetik mantık biriminin sonuçları genelde burada tutulut.(AH ve AL olarak ikiye bölünmüştür)BX-Temel adres registerıdır memory erişiminde kullanılabilir.(BH ve BL olarak ikiye bölünmüştür)CX-Sayma registerıdır.(CH ve CL olarak ikiye bölünmüştür)DX-Veri registerıdır veri tutar.(DH ve DL olarak ikiye bölünmüştür)SI-Kaynak index registerDI-Hedef index registerBP-Temel pointerSP-Stack(deste) pointerRegisterların tanımlarını her ne kadar böyle yazsakda bu registerların ne için kullanılacağı tamamen size kalmıştır.",
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