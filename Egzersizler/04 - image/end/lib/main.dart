import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Koç Sistem Flutter Eğitim Serisi'),
        ),
        body: Center(
          child: roundedImage,
        ),
      ),
    );
  }

  // Call network images
  Widget get networkImage {
    return Image.network("https://picsum.photos/200/300");
  }

  // Call asset images
  Widget get assetImage => Image.asset("assets/images/kocsistemLogo.png");

  // Call asset images
  Widget get assetImageProp => Image.asset(
        "assets/images/kocsistemLogo.png",
        fit: BoxFit.cover,
        height: 200,
        width: 200,
      );

  // Call asset images custom
  Widget get customImages =>
      Image(image: NetworkImage("https://picsum.photos/200/300"));

  // Call  images custom--
 Widget get customImagesAsset => Image(
          // Call asset images custom
          image: AssetImage(
        "https://picsum.photos/200/300",
      ));

  // fadeInImage call image animation and loading
  Widget get fadeInImage => FadeInImage.assetNetwork(
        fadeInCurve: Curves.bounceIn,
        placeholder: "assets/images/loading.png",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRCCgI_ishioj5QNpoQsf1qzke5rSa-amEEslh6yFMf_h0wh6JT",
      );

  // roundedImage set image bound.
  Widget get roundedImage => ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: fadeInImage,
      );
}
