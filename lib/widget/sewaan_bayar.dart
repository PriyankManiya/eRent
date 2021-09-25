import 'package:e_sewa/theme.dart';
import 'package:flutter/material.dart';

class SewaanBayar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Stack(
        children: [
          Container(
            height: 246,
            width: double.infinity,
            decoration: BoxDecoration(
              color: yellow,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(36),
                bottomLeft: Radius.circular(36),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 107,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_sharp,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Pembayaran Sewaan',
                      style: textBlack.copyWith(
                        fontSize: 26,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 26,
                  left: 16,
                  right: 16,
                ),
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                width: double.infinity,
                height: 421,
                decoration: BoxDecoration(
                  color: blueGlow,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.monetization_on,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          children: [
                            Text(
                              'Jumlah',
                              style: textBlack.copyWith(
                                fontSize: 10,
                                fontWeight: bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      'RM 40.00',
                      style: textBlack.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      color: purple,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'SILA PILIH PEMBAYARAN',
                      style: textBlack.copyWith(
                        fontSize: 10,
                        fontWeight: bold,
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 19),
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'e-Pay MBPJ',
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color(0xff3E4095),
                              border: Border.all(color: blue),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100),
                      width: 159,
                      height: 49,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/sewaan-bank');
                        },
                        child: Text(
                          'Teruskan',
                          style: textBlack.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          header(),
        ],
      ),
    );
  }
}
