import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import './screen3.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: const Text('Nimish Gandia')),
        body: SafeArea(
      child: Stack(
        children: [
          ImageSlideshow(
            children: [
              Image.asset(
                'assets/Indian-Army-4.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/navy.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/airforce.jpg',
                fit: BoxFit.cover,
              ),
            ],
            width: double.infinity,
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).padding.top,
            initialPage: 0,
            indicatorBackgroundColor: Colors.grey,
            indicatorColor: Theme.of(context).primaryColor,
            isLoop: true,
            autoPlayInterval: 2000,
          ),
          Container(
            color: Colors.white.withOpacity(.6),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              child: Card(
                color: Colors.white.withOpacity(0),
                elevation: 10,
                child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'JAI HIND',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor: 2,
                        ),
                        Text(
                          'Future Badas Officers ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor: 2,
                        ),
                        Text(
                          'Of India',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor: 2,
                        ),
                      ]),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * .1,
            left: MediaQuery.of(context).size.width * .25,
            child: RaisedButton(
              //color: Colors.white,
              child: Row(
                children: const [
                  Text(
                    'Click Here to Grind',
                    textScaleFactor: 1.2,
                  ),
                  Icon(
                    Icons.arrow_forward,
                  )
                ],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (Builder) => Screen3(),
                  ),
                );
              },
            ),
          )
        ],
      ),
    ));
  }
}
