import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market/dryfruits/almond.dart';
import 'package:fruit_market/dryfruits/anjeer.dart';


class DryFruit extends StatefulWidget {
  const DryFruit({Key? key}) : super(key: key);

  @override
  State<DryFruit> createState() => _DryFruitState();
}

class _DryFruitState extends State<DryFruit> {
  bool vegtable = false;
  bool fruit = false;
  bool dry_fruit = true;
  bool fav = false;

//Row 1
  List<String> Ind_dryfruit = [
    'assets/images/cashew.jpg',
    'assets/images/wallnut.jpg',
    'assets/images/hazelnut.jpg'
  ];
  List<String> title = ['Cashew Nut', 'Wall Nut', 'HazelNut'];
  List<String> price = ['\$190 Per/kg', '\$80 Per/kg', '\$70 Per/kg'];

//Row 2
  List<String> mix_dryfruit = [
    'assets/images/mixdry.jpg',
    'assets/images/paperdry.jpg',
    'assets/images/tropicdry.jpg'
  ];
  List<String> title1 = [
    'Mix Dry Fruit',
    'Paper Dry Fruits',
    'Tropical Dry Fruits'
  ];
  List<String> price1 = ['\$370 Per/kg', '\$270 Per/kg', '\$180 Per/kg'];

//Row 3
  List<String> de_dryfruit = [
    'assets/images/almond.jpg',
    'assets/images/injeer.jpg',
    'assets/images/aampapar.jpg'
  ];
  List<String> title2 = ['Almond', 'Anjeer', 'Aam papar'];
  List<String> price2 = ['\$130 Per/kg', '\$110 Per/kg', '\$180 Per/kg'];
  List<Widget> route = [Almond(), Anjeer()];
//Row 4
  List<String> kashmir_dryfruit = [
    'assets/images/drynep.jpg',
    'assets/images/pistachio.jpg',
    'assets/images/kishmish.jpg'
  ];
  List<String> title3 = ['Dry Necterine', 'Pistachio', 'Kishmish'];
  List<String> price3 = ['\$100 Per/kg', '\$180 Per/kg', '\$270 Per/kg'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Organic Vegetable row1
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Text("Indehiscent Dry Fruits",
                  style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat')),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Text("20% off",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.green,fontFamily: 'Montserrat')),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 10),
          child: Text("Pick up from organic forms",
              style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat')),
        ),

        Container(
          height: 230,
          margin: EdgeInsets.only(top: 10),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: Ind_dryfruit.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) => OrganicVegatiable(index),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Text("Mixed Dry Fruits Pack",
                  style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat')),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Text("10% off",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.green,fontFamily: 'Montserrat')),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 10),
          child: Text("Dry Fruits mix fresh pack",
              style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat')),
        ),
        Container(
          height: 220,
          margin: EdgeInsets.only(top: 15),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: mix_dryfruit.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) => MixedVeges(index),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Text("Dehiscent Dry Fruits",
                  style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat')),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Text("15% off",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.green,fontFamily: 'Montserrat')),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 10),
          child: Text("Fresh Dehiscent Dry Fruits",
              style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat')),
        ),
        Container(
          height: 220,
          margin: EdgeInsets.only(top: 15),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: de_dryfruit.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) => AlluminiumVeg(index),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Text("Kashmiri Dry Fruits",
                  style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat')),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Text("5% off",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.green,fontFamily: 'Montserrat')),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 10),
          child: Text("Fresh Kashmiri Dry Fruits",
              style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat')),
        ),
        Container(
          height: 220,
          margin: EdgeInsets.only(top: 15),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
              itemCount: kashmir_dryfruit.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) => RootVeg(index)),
        ),
      ],
    );
  }

  Row OrganicVegatiable(int index) {
    return Row(
      children: [
        Container(
          height: 220,
          width: 150,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(Ind_dryfruit[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    margin: EdgeInsets.only(left: 110, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    //  child: InkWell(
                    //    onTap: (){
                    //      setState(() {
                    //        fav=!fav;
                    //      });

                    //    },
                    //    child: Icon(Icons.favorite, color: Colors.red,),
                    //    ),
                    child: Center(
                      child: RatingBar.builder(
                          itemSize: 25,
                          itemCount: 1,
                          itemBuilder: (ctx, i) => Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                          onRatingUpdate: (onrating) {}),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    RatingBar.builder(
                        itemSize: 15,
                        itemCount: 5,
                        itemBuilder: (ctx, i) => Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                        onRatingUpdate: (onrating) {}),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  title[index],
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  price[index],
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //
  Row MixedVeges(int index) {
    return Row(
      children: [
        Container(
          height: 220,
          width: 150,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(mix_dryfruit[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    margin: EdgeInsets.only(left: 110, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: RatingBar.builder(
                          itemSize: 25,
                          itemCount: 1,
                          itemBuilder: (ctx, i) => Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                          onRatingUpdate: (onrating) {}),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    RatingBar.builder(
                        itemSize: 15,
                        itemCount: 5,
                        itemBuilder: (ctx, i) => Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                        onRatingUpdate: (onrating) {}),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  title1[index],
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  price1[index],
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row AlluminiumVeg(int index) {
    return Row(
      children: [
        Container(
          height: 220,
          width: 150,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => route[index]));
                    },
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(de_dryfruit[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    margin: EdgeInsets.only(left: 110, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: RatingBar.builder(
                          itemSize: 25,
                          itemCount: 1,
                          itemBuilder: (ctx, i) => Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                          onRatingUpdate: (onrating) {}),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    RatingBar.builder(
                        itemSize: 15,
                        itemCount: 5,
                        itemBuilder: (ctx, i) => Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                        onRatingUpdate: (onrating) {}),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  title2[index],
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  price2[index],
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

//4th row
  Row RootVeg(int index) {
    return Row(
      children: [
        Container(
          height: 220,
          width: 150,
          margin: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(kashmir_dryfruit[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    margin: EdgeInsets.only(left: 110, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: RatingBar.builder(
                          itemSize: 25,
                          itemCount: 1,
                          itemBuilder: (ctx, i) => Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                          onRatingUpdate: (onrating) {}),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    RatingBar.builder(
                        itemSize: 15,
                        itemCount: 5,
                        itemBuilder: (ctx, i) => Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                        onRatingUpdate: (onrating) {}),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  title3[index],
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  price3[index],
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
