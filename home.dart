import 'package:ecommerce_flutter/screens/Account.dart';
import 'package:ecommerce_flutter/screens/Cart.dart';
import 'package:ecommerce_flutter/screens/ExploreMain.dart';
import 'package:ecommerce_flutter/screens/Offer.dart';
import 'package:ecommerce_flutter/screens/HomeScreen.dart';
import 'package:ecommerce_flutter/theme.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return ClipRRect(
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          backgroundColor: backgroundColor6,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home, color: Colors.lightBlueAccent),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.search, color: Colors.lightBlueAccent),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon:
                  Icon(Icons.add_shopping_cart, color: Colors.lightBlueAccent),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer, color: Colors.lightBlueAccent),
              label: 'Offer',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Colors.lightBlueAccent),
              label: 'Account',
            )
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomeScreenpage();
          break;
        case 1:
          return ExploreMainpage();
          break;
        case 2:
          return Cartpage();
          break;
        case 3:
          return offerpage();
          break;
        default:
          return Accountpage();
      }
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? backgroundColor1 : backgroundColor3,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
