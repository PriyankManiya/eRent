import 'package:e_sewa/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TetapanPage extends StatefulWidget {
  @override
  _TetapanPageState createState() => _TetapanPageState();
}

class _TetapanPageState extends State<TetapanPage> {
  bool isBahasa = false;
  bool isNotified = true;
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
                child: Center(
                  child: Text(
                    'Tetapan',
                    style: textBlack.copyWith(
                      fontSize: 26,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 26,
                  left: 16,
                  right: 16,
                ),
                padding: EdgeInsets.only(
                  top: 29,
                  left: 15,
                  right: 15,
                ),
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: blueGlow,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.symmetric(
                        horizontal: 32,
                      ),
                      height: 56,
                      decoration: BoxDecoration(
                        color: Color(0xff354958),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Notifikasi',
                            style: textWhite.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                           Transform.scale(
                        scale: 0.8,
                          child:CupertinoSwitch(
                            value: isNotified,
                            onChanged: (value) {
                              setState(() {
                                isNotified = value;
                              });
                            },
                            trackColor: Color(0xffBCE0FD),
                            activeColor: Colors.green,
                          ),
                          )
                          // Container(
                          //   width: 40,
                          //   height: 24,
                          //   decoration: BoxDecoration(
                          //     color: Color(0xffBCE0FD),
                          //     borderRadius: BorderRadius.circular(20),
                          //     border: Border.all(color: white),
                          //   ),
                          //   child: Container(
                          //     margin: EdgeInsets.only(
                          //       right: 16,
                          //     ),
                          //     width: 10,
                          //     height: 24,
                          //     decoration: BoxDecoration(
                          //       color: purple,
                          //       borderRadius: BorderRadius.circular(100),
                          //       border: Border.all(color: white),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.symmetric(
                        horizontal: 32,
                      ),
                      height: 56,
                      decoration: BoxDecoration(
                        color: Color(0xff354958),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bahasa',
                            style: textWhite.copyWith(
                              fontWeight: bold,
                            ),
                          ),
                          Transform.scale(
                        scale: 0.8,
                          child:CupertinoSwitch(
                            value: isBahasa,
                            onChanged: (value) {
                              setState(() {
                                isBahasa = value;
                              });
                            },
                            trackColor: Color(0xffBCE0FD),
                            activeColor: Colors.green,
                          ),
                          )
                          // Container(
                          //   width: 40,
                          //   height: 24,
                          //   decoration: BoxDecoration(
                          //     color: Color(0xffBCE0FD),
                          //     borderRadius: BorderRadius.circular(20),
                          //     border: Border.all(color: white),
                          //   ),
                          //   child: Container(
                          //     margin: EdgeInsets.only(
                          //       right: 16,
                          //     ),
                          //     width: 10,
                          //     height: 24,
                          //     decoration: BoxDecoration(
                          //       color: purple,
                          //       borderRadius: BorderRadius.circular(100),
                          //       border: Border.all(color: white),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 170,
                    ),
                    Text(
                      'Version 1.0',
                      style: textBlack.copyWith(
                        fontSize: 10,
                        fontWeight: bold,
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Container(
                      width: 162,
                      height: 60,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Log Keluar',
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
      body: Column(
        children: [
          header(),
        ],
      ),
    );
  }
}
