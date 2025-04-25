import 'package:flutter/material.dart';

class GridviewScreen extends StatelessWidget {
  const GridviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var myItems = [
      {
        "img":
            //"https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877659/bdbfqc16l5k2nhaoc99u.jpg",
            "https://bsmedia.business-standard.com/_media/bs/img/article/2014-03/26/full/1395826533-699.png?im=FeatureCrop,size=(826,465)",
        "title": "Android",
      },
      {
        "img":
            //"https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877680/ilnb8qjctbxo2xnrtylf.png",
            "https://beecrowd.com/wp-content/uploads/2024/04/2022-07-19-Melhores-cursos-de-Python.jpg",
        "title": "Python",
      },
      {
        "img":
            //"https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877702/oxrvaljxkohs9szceqqt.png",
            "https://www.shutterstock.com/shutterstock/photos/1896170293/display_1500/stock-photo-c-code-on-dark-background-and-word-c-c-programing-language-1896170293.jpg",
        "title": "C++",
      },
      {
        "img":
            //"https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877719/agcgvuve4rkmdh6bd5qf.png",
            "https://picperf.io/https://laravelnews.s3.amazonaws.com/images/phplogo.jpg",
        "title": "PHP",
      },
      {
        "img":
            "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877735/k5bhru2686zxbjednwwr.png",
        "title": "Ruby",
      },
      {
        "img":
            //"https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877758/tafqmkrghogfxucf1qrc.png",
            "https://www.infoworld.com/wp-content/uploads/2024/06/java_binary_code_gears_programming_coding_development_by_bluebay2014_gettyimages-1040871468_2400x1600-100795798-orig.jpg?quality=50&strip=all&w=1024",
        "title": "Java",
      },
      {
        "img":
            "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877784/jscq8pzbrs3kuaktersp.png",
        "title": "Rails",
      },
      {
        "img":
            "https://res.cloudinary.com/dvsuhuocv/image/upload/v1736877809/db9p9tmaiikif6zjatft.jpg",
        "title": "Ajax",
      },
    ];
    return Scaffold(
      appBar: AppBar(title: Text("GridView"), backgroundColor: Colors.blueGrey),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: SizedBox(
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: Image.network(
                        myItems[index]['img']!,
                        width: 250,
                        height: 100,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text(myItems[index]['title']!),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
