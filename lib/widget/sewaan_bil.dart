import 'package:e_sewa/theme.dart';
import 'package:flutter/material.dart';

class SewaanBil extends StatelessWidget {
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
                padding: EdgeInsets.only(top: 46),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: yellow,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 22,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.pop(context);
                            Navigator.pushNamed(context, '/home');
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_sharp,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Senarai Bil',
                          style: textBlack.copyWith(
                            fontSize: 26,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 81,
                          height: 32,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: black,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/sewaan-page');
                            },
                            child: Text(
                              'Bayar',
                              style: textWhite.copyWith(
                                fontSize: 12,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        Container(
                          width: 81,
                          height: 32,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: Color(0xff3E4095),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Bil',
                              style: textWhite.copyWith(
                                fontSize: 12,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 17,
                        ),
                        Container(
                          width: 81,
                          height: 32,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: black,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/resit');
                            },
                            child: Text(
                              'Resit',
                              style: textWhite.copyWith(
                                fontSize: 12,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 36,
                  left: 19,
                  right: 19,
                ),
                padding: EdgeInsets.only(
                  top: 20,
                  left: 19,
                  right: 19,
                ),
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  color: yellow,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Transaksi',
                      style: textBlack.copyWith(
                        color: Color(0xff0B0101),
                        fontSize: 15,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1 Juni 2021',
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: black,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/invoice');
                          },
                          child: Text(
                            'View',
                            style: textWhite.copyWith(
                              fontSize: 16,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                        Text(
                          'RM 40.00',
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: black,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1 April 2021',
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: black,
                          ),
                          onPressed: () {},
                          child: Text(
                            'View',
                            style: textWhite.copyWith(
                              fontSize: 16,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                        Text(
                          'RM 40.00',
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: black,
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
      body: Container(
        color: yellow.withOpacity(0.1),
        child: Column(
          children: [
            header(),
          ],
        ),
      ),
    );
  }
}
