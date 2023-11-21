import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[400],
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("FLOWERS SHOP"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          )
        ],
        backgroundColor: Colors.grey[800],
      ),
      body: Stack(
        children: [
          GridView.builder(
            gridDelegate: 
            SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 1,
            crossAxisSpacing: 0
            ), 
            itemCount: image.length,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                child: Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),   
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    children: [
                      Image.network(image[index],width: 100,height: 100,),
                    Title(color: Colors.red,
                     child: Padding(
                       padding: const EdgeInsets.only(right: 50),
                       child: Text(name[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                     )),
                     Padding(
                       padding: const EdgeInsets.only(right: 30,top: 5),
                       child: Text(price[index],style: TextStyle(color: Colors.red,fontSize: 17),),
                     )
                    
                    ],
                  ),
                ),
                
                ),
              );
            }
            
          ),
        ],
      ),
    );
  }
}
final List image=[
  "http://2.bp.blogspot.com/-J4nXwB12ag4/T0x4BicfePI/AAAAAAAAAeo/6BicO3gQPPA/s1600/My+Asiatic+Lily+Flowers+4.jpg",
  "https://jooinn.com/images/red-rose-flower.jpg",
  "https://www.wallpaperflare.com/static/712/605/64/blue-iris-iris-flower-close-up-photography-iris-flower-wallpaper.jpg",
  "https://jooinn.com/images/daisy-27.jpg",
  "https://i1.wp.com/www.theayurveda.org/wp-content/uploads/2015/08/Jasmine-flower.jpg?fit=3888%2C2576&ssl=1",
  "https://www.goodfreephotos.com/albums/plants/violet-flower.jpg",
  "https://www.flowerspicture.org/lalbagh-flower-show-august-2014/enlarge/papaver-rhoeas.jpg",
  "https://jooinn.com/images/lavender-flower-2.jpg"
];
List name=[
  "Lily",
  "Rose",
  "Iris",
  "Daisy",
  "Jasmine",
  "Violet",
  "Poppy",
  "Lavender"
];
List price=[
  "₹ 400.00",
  "₹ 100.00",
  "₹ 1000.00",
  "₹ 750.00",
  "₹ 499.00",
  "₹ 350.00",
  "₹ 700.00",
  "₹ 200.00"
];