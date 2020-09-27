import 'package:flutter/material.dart';
import '../utils/button-nav-bar.dart';
import 'package:lottie/lottie.dart';
import '../utils/variables.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Lottie.asset('assets/lottie/Home.json'),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: size.width,
                height: 80,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(size.width, 80),
                      painter: ButtomNavBar(),
                    ),
                    Center(
                      heightFactor: 0.85,
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: FLOATING_BUTTON_BACKGROUND_COLOR,
                        child: Icon(Icons.shopping_cart),
                      ),
                    ),
                    Container(
                      width: size.width,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Icon(Icons.home),
                            onPressed: () {},
                            color: NAV_BAR_ICON_COLOR,
                          ),
                          IconButton(
                              icon: Icon(Icons.store),
                              onPressed: () {},
                              color: NAV_BAR_ICON_COLOR),
                          SizedBox(
                            width: 50,
                          ),
                          IconButton(
                              icon: Icon(Icons.bookmark),
                              onPressed: () {},
                              color: NAV_BAR_ICON_COLOR),
                          IconButton(
                              icon: Icon(Icons.notifications),
                              onPressed: () {},
                              color: NAV_BAR_ICON_COLOR),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
