import 'package:e_sewa/theme.dart';
import 'package:flutter/material.dart';

class ViewResit extends StatelessWidget {
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
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_sharp,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Resit',
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
                  top: 7,
                  left: 7,
                  right: 8,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff7C72FF),
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 56,
                child: Text(
                  'MBPJ',
                  style: TextStyle(
                    color: white,
                    fontSize: 16,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 7,
                  left: 7,
                  right: 8,
                ),
                padding: EdgeInsets.only(top: 5),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: blueGlow,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Resit Pembayaran',
                              style: textBlack.copyWith(
                                fontSize: 16,
                                fontWeight: bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Pelanggan yang disayangi,',
                              style: textBlack.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                          left: 30,
                          right: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nama',
                              style: TextStyle(
                                color: Color(0xffB1B1D2),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text('Ali Bin Abu'),
                            Divider(
                              thickness: 2,
                              color: Color(0xffB3DAF7),
                            ),
                            Text(
                              'No Rujukan',
                              style: TextStyle(
                                color: Color(0xffB1B1D2),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text('MBPJ-023423423'),
                            Divider(
                              thickness: 2,
                              color: Color(0xffB3DAF7),
                            ),
                            Text(
                              'No Akaun',
                              style: TextStyle(
                                color: Color(0xffB1B1D2),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text('123456789'),
                            Divider(
                              thickness: 2,
                              color: Color(0xffB3DAF7),
                            ),
                            Text(
                              'ID Transaksi',
                              style: TextStyle(
                                color: Color(0xffB1B1D2),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text('ID12332523'),
                            Divider(
                              thickness: 2,
                              color: Color(0xffB3DAF7),
                            ),
                            Text(
                              'Kaedah Transaksi',
                              style: TextStyle(
                                color: Color(0xffB1B1D2),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text('e-Pay MBPJ'),
                            Divider(
                              thickness: 2,
                              color: Color(0xffB3DAF7),
                            ),
                            Text(
                              'Jumlah(RM)',
                              style: TextStyle(
                                color: Color(0xffB1B1D2),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Text('40'),
                                Spacer(),
                                Image.asset(
                                  'assets/upload.png',
                                )
                              ],
                            ),
                            Divider(
                              thickness: 2,
                              color: Color(0xffB3DAF7),
                            ),
                          ],
                        ),
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

    return Scaffold(
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}
