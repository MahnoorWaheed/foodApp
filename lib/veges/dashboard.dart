import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market/dryfruits/dryfruits.dart';
import 'package:fruit_market/fruits/fruits.dart';
import 'package:fruit_market/veges/broccoli.dart';


class DashBoard extends StatefulWidget {
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
//Row 1
  List<String> oraganic_veg = [
    'assets/images/broccoli.jpg',
    'assets/images/brinjals.jpg',
    'assets/images/corriander.jpg'
  ];
  List<String> title = ['Broccoli', 'Brinjals', 'Corriander'];
  List<String> price = ['\$190 Per/kg', '\$80 Per/kg', '\$70 Per/kg'];
  List<Widget> route = [Broccoli()];

//Row 2
  List<String> mix_veg = [
    'assets/images/mixvegs.jpg',
    'assets/images/peppervegs.jpg',
    'assets/images/tropica.jpg'
  ];
  List<String> title1 = [
    'Multi Vegetables',
    'Pepper Vegetables',
    'Tropicana Vegetables'
  ];
  List<String> price1 = ['\$370 Per/kg', '\$270 Per/kg', '\$180 Per/kg'];

//Row 3
  List<String> allum_veg = [
    'assets/images/onion.jpg',
    'assets/images/garlic.jpg',
    'assets/images/ginger.jpg'
  ];
  List<String> title2 = ['Onion', 'Garlic', 'Ginger'];
  List<String> price2 = ['\$130 Per/kg', '\$110 Per/kg', '\$180 Per/kg'];

//Row 4
  List<String> root_veg = [
    'assets/images/carrot.jpg',
    'assets/images/raddish.jpg',
    'assets/images/potato.jpg'
  ];
  List<String> title3 = ['Carrot', 'Raddish', 'Potato'];
  List<String> price3 = ['\$100 Per/kg', '\$180 Per/kg', '\$270 Per/kg'];
  bool vegtable = true;
  bool fruit = false;
  bool dry_fruit = false;
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
        // Code for customize search bar
        height: 190.0,
        child: Stack(
          children: <Widget>[
            Container(
              color: Color(0xff69A03A),
              width: MediaQuery.of(context).size.width,
              height: 150.0,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text("Fruit Market",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Montserrat',
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 150),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 120.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.5), width: 1.0),
                      color: Colors.white),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        onPressed: () {},
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
          ),
          Container(
        // for customize tab bar
        margin: const EdgeInsets.only(left: 30),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                setState(
                  () {
                    fruit = false;
                    dry_fruit = false;
                    vegtable = true;
                  },
                );
              },
              child: Container(
                width: 90,
                height: 30,
                //margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: vegtable ? Color(0xffCC7D00) : Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.white, width: 1)),
                child: const SizedBox(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Vegetables",
                      style: TextStyle(fontFamily: 'Montserrat',fontSize: 12),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  fruit = true;
                  dry_fruit = false;
                  vegtable = false;
                });
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (ctx) => Fruits()));
              },
              child: Container(
                width: 90,
                height: 30,
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: fruit ? Color(0xffCC7D00) : Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.white, width: 1)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Fruits", style: TextStyle(fontFamily: 'Montserrat',fontSize: 12),),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  setState(
                    () {
                      fruit = false;
                      dry_fruit = true;
                      vegtable = false;
                    },
                  );
                });
              },
              child: Container(
                width: 90,
                height: 30,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: dry_fruit ? Color(0xffCC7D00) : Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(color: Colors.white, width: 1)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Dry Fruits", style: TextStyle(fontFamily: 'Montserrat',fontSize: 12),),
                ),
              ),
            ),
          ],
        ),
          ),
      
          //  vegtable ? Vegetables(): fruit ? Fruits():Container()
          //      ],),),);
          vegtable == true
          ? Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 20),
                        child: Text("Organic Vegetables",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontFamily: 'Montserrat',)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        child: Text("20% off",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.green, fontFamily: 'Montserrat',)),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 10),
                    child: Text("Pick up from organic forms",
                        style: TextStyle(fontWeight: FontWeight.w900,
                        fontFamily: 'Montserrat',
                        )),
                  ),
                  Container(
                    height: 230,
                    margin: EdgeInsets.only(top: 10),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: oraganic_veg.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) => OrganicVegatiable(index),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 20),
                        child: Text("Mixed Vegetables Pack",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, 
                                fontFamily: 'Montserrat',
                                )),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        child: Text("20% off",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.green, 
                                fontFamily: 'Montserrat',
                                )),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 10),
                    child: Text("Vegetable mix fresh pack",
                        style: TextStyle(fontWeight: FontWeight.w900, 
                        fontFamily: 'Montserrat',
                        )),
                  ),
                  Container(
                    height: 220,
                    margin: EdgeInsets.only(top: 10),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: mix_veg.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) => MixedVeges(index),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 20),
                        child: Text("Allium Vegetabels",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontFamily: 'Montserrat',)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        child: Text("20% off",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.green,fontFamily: 'Montserrat',)),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 10),
                    child: Text("Fresh Allium Vegetables",
                        style: TextStyle(fontWeight: FontWeight.w900, fontFamily: 'Montserrat',)),
                  ),
                  Container(
                    height: 220,
                    margin: EdgeInsets.only(top: 10),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: allum_veg.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) => AlluminiumVeg(index),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 20),
                        child: Text("Root Vegetabels",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontFamily: 'Montserrat',)),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 20),
                        child: Text("20% off",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.green, fontFamily: 'Montserrat',)),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 10),
                    child: Text("Fresh Root Vegetables",
                        style: TextStyle(fontWeight: FontWeight.w900, fontFamily: 'Montserrat',)),
                  ),
                  Container(
                    height: 220,
                    margin: const EdgeInsets.only(top: 10),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                        itemCount: root_veg.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) => RootVeg(index)),
                  ),
                ],
              ),
            )
          : fruit == true
              ? Fruits()
              : dry_fruit == true
                  ? DryFruit()
                  : Container(),
        ]
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
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
                          image: AssetImage(
                            oraganic_veg[index],
                          ),
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
                        image: AssetImage(mix_veg[index]),
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
                margin: EdgeInsets.only(left: 1, top: 5),
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

//3rd row
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
                        image: AssetImage(allum_veg[index]),
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
                        image: AssetImage(root_veg[index]),
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
