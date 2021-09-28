import 'package:e_sewa/pages/home/faqs_page.dart';
import 'package:e_sewa/pages/home/profile_page.dart';
import 'package:e_sewa/pages/home/tetapan_page.dart';
import 'package:e_sewa/pages/home/utama_page.dart';
import 'package:e_sewa/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomAppBar(
        elevation: 0,
        child: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          backgroundColor: yellow.withOpacity(0.1),
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (value) {
            print(value);
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              activeIcon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/home.png',
                  width: 30,
                  color: Colors.black,
                ),
              ),
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset('assets/home.png',
                    width: 30, color: Colors.grey),
              ),
              label: 'Utama',
            ),
            BottomNavigationBarItem(
              activeIcon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/help.png',
                  width: 30,
                  color: Colors.black,
                ),
              ),
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset('assets/help.png',
                    width: 30, color: Colors.grey),
              ),
              label: 'FAQs',
            ),
            BottomNavigationBarItem(
              activeIcon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/user.png',
                  width: 30,
                  color: Colors.black,
                ),
              ),
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset('assets/user.png',
                    width: 30, color: Colors.grey),
              ),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              activeIcon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset(
                  'assets/gear.png',
                  width: 30,
                  color: Colors.black,
                ),
              ),
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset('assets/gear.png',
                    width: 30, color: Colors.grey),
              ),
              label: 'Tetapan',
            ),
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return UtamaPage();

        case 1:
          return FaqsPage();

        case 2:
          return ProfilePage();

        case 3:
          return TetapanPage();

        default:
          return UtamaPage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
