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
        child: BottomNavigationBar(
          unselectedItemColor: purple,
          selectedItemColor: orange,
          backgroundColor: white,
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
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset('assets/icon_utama.png'),
              ),
              label: 'Utama',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset('assets/icon_utama.png'),
              ),
              label: 'FAQs',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset('assets/icon_profile.png'),
              ),
              label: 'Profil',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ),
                child: Image.asset('assets/icon_utama.png'),
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
