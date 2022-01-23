import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                ),
                children: [
                  TextSpan(
                    text: 'Explore ',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 20.0),
                  ),
                  TextSpan(
                    text: 'Europe',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Icon(
                Icons.arrow_drop_down,
                color: Colors.blue,
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/cm3.jpeg'),
              radius: 25.0,
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children: [
          Text(
            'Your Trips'.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 14.0,
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: 100.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                image: AssetImage('assets/images/cm0.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListTile(
              title: Text(
                'Europe 2021',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              subtitle: Text(
                '13 Locations . 1922km',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Container(
                height: 35.0,
                width: 80.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child: Center(
                    child: Text(
                      'Edit',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            'Must see'.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 14.0,
            ),
          ),
          SizedBox(height: 10.0),
          _buildMustSee(),
          SizedBox(height: 30.0),
          Text(
            'Pre-Made Plans'.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 14.0,
            ),
          ),
          SizedBox(height: 10.0),
          _buildPreMadePlans(),
        ],
      ),
    );
  }

  _buildMustSee() {
    return Container(
      height: 180.0,
      child: ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Container(
              height: 150.0,
              width: 200.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset(
                      'assets/images/cm${Random().nextInt(5)}.jpeg',
                      height: 100.0,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Tromsa, Norway',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    subtitle: Text(
                      '31 Hotels, 133 Restuarants',
                      style: TextStyle(color: Colors.black, fontSize: 10.0),
                    ),
                    trailing: Container(
                      height: 25.0,
                      width: 25.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Icon(
                              Icons.add,
                              size: 25.0,
                              color: Colors.white,
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _buildPreMadePlans() {
    return Container(
      height: 180.0,
      child: ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Container(
              height: 150.0,
              width: 250.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Row(
                children: [
                  Container(
                    height: 150.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/cm${Random().nextInt(5)}.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30.0),
                      Text(
                        'Norway in Winter',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 17.0),
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        width: 135,
                        child: Text(
                          'Check out these beautiful spots in Norway at their best during Winter!.',
                          maxLines: null,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '\$${Random().nextInt(9)}00',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 18.0,
                            color: Colors.blue),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
