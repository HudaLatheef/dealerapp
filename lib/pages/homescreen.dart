import 'package:dealerapp/pages/details.dart';
import 'package:dealerapp/pages/language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => IconButton(
            color: Colors.black,
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
        ),
        title: Text(
          'Bid',
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'My bids',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: Text(
                  'Interested in',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 0.05.sh,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('All'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Iphone',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Laptop'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Tablet'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Smartwatch'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Smartphone'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('TV'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Laptop'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Tablet'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Smartwatch'),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 18, right: 18, top: 18, bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hot picks',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        Text(
                          '(250)',
                          style:
                              TextStyle(color: Colors.purple, fontSize: 14.sp),
                        )
                      ],
                    ),
                    Text(
                      'See all',
                      style: TextStyle(color: Colors.purple, fontSize: 14.sp),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  'No bids placed',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 0.38.sh,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Product(),
                        Product(),
                        Product(),
                        Product(),
                        Product()
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 18, right: 18, bottom: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Bid by series',
                            style: TextStyle(fontSize: 14.sp),
                          ),
                          Text(
                            '(25)',
                            style: TextStyle(
                                color: Colors.purple, fontSize: 14.sp),
                          )
                        ],
                      ),
                      Text(
                        'See all',
                        style: TextStyle(color: Colors.purple, fontSize: 14.sp),
                      )
                    ],
                  )),
              // ignore: sized_box_for_whitespace
              Container(
                height: 0.05.sh,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Iphone',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Samsung'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Huwaie'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Oppo'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Oneplus'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('MI'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Sony'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Blackberry'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Tablet'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Smartwatch'),
                        )
                      ],
                    )
                  ],
                ),
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 0.18.sh,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/bid.png'),
                        Image.asset('assets/images/bid.png'),
                        Image.asset('assets/images/bid.png'),
                        Image.asset('assets/images/bid.png'),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 18, right: 18, top: 18, bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Trending in market',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        Text(
                          '(250)',
                          style:
                              TextStyle(color: Colors.purple, fontSize: 14.sp),
                        )
                      ],
                    ),
                    Text(
                      'See all',
                      style: TextStyle(color: Colors.purple, fontSize: 14.sp),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  'No bids placed',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 0.38.sh,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Product(),
                        Product(),
                        Product(),
                        Product(),
                        Product()
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 18, right: 18, top: 18, bottom: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Be the first to bid',
                          style: TextStyle(fontSize: 14.sp),
                        ),
                        Text(
                          '(250)',
                          style:
                              TextStyle(color: Colors.purple, fontSize: 14.sp),
                        )
                      ],
                    ),
                    Text(
                      'See all',
                      style: TextStyle(color: Colors.purple, fontSize: 14.sp),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text(
                  'No bids placed',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: 0.38.sh,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Product2(),
                        Product2(),
                        Product2(),
                        Product2(),
                        Product2()
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            IconButton(
              icon: Image.asset('assets/images/bidd.png'),
              tooltip: 'Closes application',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Language()),
                );
              },
            ),
            IconButton(
              icon: Image.asset('assets/images/deals.png'),
              tooltip: 'Closes application',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homescreen()),
                );
              },
            ),
            IconButton(
              icon: Image.asset('assets/images/sell.png'),
              tooltip: 'Closes application',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homescreen()),
                );
              },
            ),
            IconButton(
              icon: Image.asset('assets/images/trends.png'),
              tooltip: 'Closes application',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homescreen()),
                );
              },
            ),
            IconButton(
              icon: Image.asset('assets/images/more.png'),
              tooltip: 'Closes application',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homescreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Details()));
      },
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          height: 0.32.sh,
          width: 0.49.sw,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, right: 12, top: 3, bottom: 3),
                        child: Text(
                          'Hot bid',
                          style: TextStyle(color: Colors.red),
                        ),
                      )),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                      height: 0.14.sh,
                      width: 0.2.sw,
                      child: Image.asset('assets/images/iphone.png')),
                  Text(
                    'Iphone 11 pro, 16 GB',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(4)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            '+ Place bid at 3500 AED',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(4)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Qty:5',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Product2 extends StatefulWidget {
  @override
  _Product2State createState() => _Product2State();
}

class _Product2State extends State<Product2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 0.32.sh,
        width: 0.49.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, top: 3, bottom: 3),
                      child: Text(
                        'Fresh bid',
                        style: TextStyle(color: Colors.green),
                      ),
                    )),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                    height: 0.14.sh,
                    width: 0.2.sw,
                    child: Image.asset('assets/images/iphone.png')),
                Text(
                  'Iphone 11 pro, 16 GB',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          '+ Place bid at 3500 AED',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Qty:5',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
