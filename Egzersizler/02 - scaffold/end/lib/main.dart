import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Uygulamamizin  material componentleri ile kullanmak icin sarmaliyoruz.
    return MaterialApp(
      title: 'Material App',

// Scaffold yani iskelet componeneti bizim sayfalarimizda tasarim şablonu olarak düşünebilir.
// Bu şablon header-body-footer alanı gibi çalışmaktadır
      home: Scaffold(
        // appbar web dünyasındaki headerin karşılığıdır.
        // Sizlere application sayfalarında dinamik bar tasarımlar yapmanıza olanak sağlar
        // İçerisndeki özellikler ile istediğiniz bir çok bar tasarımını yapabilirsiniz
        appBar: AppBar(
          // title property'si sizden bir widget bekler yani buda buraya bir çok componenti verebilirsiniz gibi düşünebilirsiniz
          // ex: diyelim ki centere basınca alert cıksın gibi düşünebilrisiniz
          title: Text("Welcome StarForce"),
          // Barımızın sol kısmında ayrılmış kısım burada genelde back button veya hamburger menu gıbı ıtemler bulunur.
          leading: Text("Sol Bar"),
          // Barımızın sağ kısmında ayrılmış kısım burada ise genelde action itemler bulunur dokunma anındaki eventler
          actions: <Widget>[Text("Sağ Bar ")],
        ),
        // Sayfamızın en altındaki bar olarak footer alanı da diyebilirsiniz
        // Burada sayfanın navigation işlemlerinin yanı sıra barınızda bir çok opsiyonu kullanabilirsiniz
        bottomNavigationBar: BottomNavigationBar(
          items: [BottomNavigationBarItem(icon: Icon(Icons.ac_unit))],
        ),

        // Sayfamızın ana alanıdır burada sayfamızdaki tüm içerik dizaynını gerçekleştiririz.
        body: Center(
          // Container dediğimiz en basit layout componentimiz burada bize sağladığı yükseklik genişlik gibi değerler ile
          // Tasarımımızı yaparız
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
