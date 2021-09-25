import 'package:e_sewa/widget/Common/web_view.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class UtamaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget services() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/permohonan-page');
                },
                child: Container(
                  width: 150,
                  height: 119,
                  margin: EdgeInsets.only(top: 282),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_aset.png',
                        height: 40,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Permohonan\nAset',
                        style: textBlack.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 33,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/status-page');
                },
                child: Container(
                  width: 150,
                  height: 119,
                  margin: EdgeInsets.only(top: 282),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_aset.png',
                        height: 40,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Status\nPermohonan',
                        style: textBlack.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/sewaan-page');
                },
                child: Container(
                  width: 150,
                  height: 119,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_sewaan.png',
                        height: 40,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Pembayaran\nSewaan',
                        style: textBlack.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 33,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/webView-page',arguments:WebViewScreen(serviceUrl: "https://elesen.mbpj.gov.my/auth/login",title: " ",) );
                },
                child: Container(
                  width: 150,
                  height: 119,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_sewaan.png',
                        height: 40,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Permohonan\neLESEN',
                        style: textBlack.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget header() {
      return Stack(
        children: [
          Container(
            height: 383,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45),
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'e- ',
                        style: textYellow.copyWith(
                          fontSize: 56,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'SEWA',
                        style: textWhite.copyWith(
                          fontSize: 56,
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Hi, Ali',
                      style: textWhite.copyWith(
                        fontSize: 26,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 52,
                  ),
                  Center(
                    child: Text(
                      'Sila Pilih Servis',
                      style: textWhite.copyWith(
                        fontSize: 20,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          services(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.yellow.withOpacity(0.1),
      body: Column(
        children: [
          header(),
        ],
      ),
    );
  }
}
