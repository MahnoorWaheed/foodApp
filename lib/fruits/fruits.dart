import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market/fruits/grapes.dart';
import 'package:fruit_market/fruits/strawberry.dart';


class Fruits extends StatefulWidget {
  const Fruits({Key? key}) : super(key: key);

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
  bool vegtable = false;
  bool fruit = true;
  bool dry_fruit = false;
  bool fav = false;

//Row 1
  List<String> oraganic_fruit = [
    'assets/images/straw.jpg',
    'assets/images/grape.jpg',
    'assets/images/orange.jpg'
  ];
  List<String> title = ['Strawberries', 'Grapes', 'Oranges'];
  List<String> price = ['\$190 Per/kg', '\$80 Per/kg', '\$70 Per/kg'];
  List<Widget> route = [StrawBerry(), Grapes()];

//Row 2
  List<String> mix_fruit = [
    'assets/images/mixfruit.jpg',
    'assets/images/papermix.jpg',
    'assets/images/tropicfruit.jpg'
  ];
  List<String> title1 = ['Mix Fruits', 'Paper Mix Fruits', 'Tropical Fruits'];
  List<String> price1 = ['\$370 Per/kg', '\$270 Per/kg', '\$180 Per/kg'];

//Row 3
  List<String> stone_fruit = [
    'assets/images/apri.jpg',
    'assets/images/peach.jpg',
    'assets/images/nect.jpg'
  ];
  List<String> title2 = ['Apricot', 'Peaches', 'Necterine'];
  List<String> price2 = ['\$130 Per/kg', '\$110 Per/kg', '\$180 Per/kg'];

//Row 4
  List<String> melon_fruit = [
    'assets/images/melon.jpg',
    'assets/images/greenmelon.jpg',
    'assets/images/ymelon.jpg'
  ];
  List<String> title3 = ['Melon', 'Melon', 'Melon'];
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
              child: Text("organic Fruits",
                  style: TextStyle(fontWeight: FontWeight.w900, fontFamily: 'Montserrat',)),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Text("20% off",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.green,fontFamily: 'Montserrat',)),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 10),
          child: Text("Pick up from organic forms",
              style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat',)),
        ),

        Container(
          height: 230,
          margin: EdgeInsets.only(top: 10),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: oraganic_fruit.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) => OrganicVegatiable(index),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Text("Mixed Fruit Pack",
                  style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat',)),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Text("20% off",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.green,fontFamily: 'Montserrat',)),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 10),
          child: Text("Vegetable mix fresh pack",
              style: TextStyle(fontWeight: FontWeight.w900,
              fontFamily: 'Montserrat',)),
        ),
        Container(
          height: 220,
          margin: EdgeInsets.only(top: 15),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: mix_fruit.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) => MixedVeges(index),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Text("Stone Fruits",
                  style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat',)),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Text("20% off",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.green,fontFamily: 'Montserrat',)),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 10),
          child: Text("Fresh Allium Vegetables",
              style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat',)),
        ),
        Container(
          height: 220,
          margin: EdgeInsets.only(top: 15),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: stone_fruit.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) => AlluminiumVeg(index),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Text("Melon Fruit",
                  style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat',)),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Text("20% off",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, color: Colors.green,fontFamily: 'Montserrat',)),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 10),
          child: Text("Fresh Root Vegetables",
              style: TextStyle(fontWeight: FontWeight.w900,fontFamily: 'Montserrat',)),
        ),
        Container(
          height: 220,
          margin: EdgeInsets.only(top: 15),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
              itemCount: melon_fruit.length,
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
                          image: AssetImage(oraganic_fruit[index]),
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
                margin: EdgeInsets.only(left: 10 , top: 5),
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
                        image: AssetImage(mix_fruit[index]),
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
                margin: EdgeInsets.only(left:10, top: 5),
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
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(stone_fruit[index]),
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
                        image: AssetImage(melon_fruit[index]),
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
