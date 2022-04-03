import 'package:dealerapp/pages/homescreen.dart';
import 'package:dealerapp/pages/language.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customise extends StatefulWidget {
  @override
  _CustomiseState createState() => _CustomiseState();
}

class _CustomiseState extends State<Customise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 80),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'What are you interested in buying?',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'It help us customise your experience',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Choose one or more device categories',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: const AssetImage('assets/images/smartphone.png'),
                      width: 0.25.sw,
                      height: 0.15.sh,
                    ),
                    const Text('Smartphone')
                  ],
                ),
                Column(
                  children: [
                    Image(
                      image: const AssetImage('assets/images/smartwatch.png'),
                      width: 0.25.sw,
                      height: 0.15.sh,
                    ),
                    const Text('Smartwatch')
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: const AssetImage('assets/images/laptop.png'),
                      width: 0.25.sw,
                      height: 0.15.sh,
                    ),
                    const Text('Laptop')
                  ],
                ),
                Column(
                  children: [
                    Image(
                      image: const AssetImage('assets/images/tablet.png'),
                      width: 0.25.sw,
                      height: 0.15.sh,
                    ),
                    Text('Tablet')
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              width: 0.9.sw,
              height: 0.067.sh,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                },
                child: const Text('Explore'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Language()));
                      },
                      child: Text(
                        'Go back',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.purple),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
