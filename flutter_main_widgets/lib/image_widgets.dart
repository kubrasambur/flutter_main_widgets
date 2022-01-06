// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImageExamples extends StatelessWidget {
  const ImageExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        "https://upload.wikimedia.org/wikipedia/commons/c/cc/Sunrise_Beauty_of_Nature.jpg";
    String _img2 =
        "https://upload.wikimedia.org/wikipedia/commons/c/c5/Nature_Scene.jpg";
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //IntrinsicHeight ile bir satırda ya da sütunda bulunan elemanların en yüksek ya da en geniş elemala aynı yükseklikte ya da genişlikte olmasını istediğimiz durumlarda kullanırız ama fazla kullanılması tavsiye edilmez çünkü maaliyetlidir.
          IntrinsicHeight(
            child: Row(
              //IntrinsicHeight ile beraber aşağıdaki satırı da kullanmamız gerekiyor
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    width: 150,
                    height: 150,
                    child: Image.asset(
                      "assets/images/1.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    width: 150,
                    height: 150,
                    child: Image.network(
                      _imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    child: CircleAvatar(
                      child: Text(
                        "K",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      backgroundImage: NetworkImage(_img2),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.red,
                      radius: 100,
                    ),
                  ),
                )
              ],
            ),
          ),
          //FadeInImage, internetten resim yüklediğimiz zaman o resim yükleninceye kadar ekranda başka birşey gösterilmesini sağlar
          Container(
            height: 200,
            child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder: "assets/images/loading.gif",
                image: _imgUrl),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: Colors.blue,
            ),
          )),
        ],
      ),
    );
  }
}
