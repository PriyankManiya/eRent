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
              color: black,
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
                  color: yellow,
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
                  color: yellow,
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
                          color: black,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Notifikasi',
                            style: textYellow.copyWith(
                                fontWeight: bold, fontSize: 16),
                          ),
                          Transform.scale(
                            scale: 0.8,
                            child: CupertinoSwitch(
                              value: isNotified,
                              onChanged: (value) {
                                setState(() {
                                  isNotified = value;
                                });
                              },
                              trackColor:yellow,
                              activeColor: Colors.green,
                            ),
                          )
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
                          color: black,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bahasa',
                            style: textYellow.copyWith(
                                fontWeight: bold, fontSize: 16),
                          ),
                          Transform.scale(
                            scale: 0.8,
                            child: CupertinoSwitch(
                              value: isBahasa,
                              onChanged: (value) {
                                setState(() {
                                  isBahasa = value;
                                });
                              },
                              trackColor: yellow,
                              activeColor: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 170,
                    ),
                    Text(
                      'Version 1.0',
                      style: textBlack.copyWith(
                        fontSize: 13,
                        fontWeight: bold,
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    RaisedButton(
                        color: black,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 11),
                          child: Text(
                            "Log Keluar",
                            style: textWhite.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: yellow.withOpacity(0.1),
      body: Column(
        children: [
          header(),
        ],
      ),
    );
  }
}
