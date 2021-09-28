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
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: yellow,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
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
                    fontWeight: FontWeight.bold,
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
                  color: yellow,
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
                            SizedBox(height: 10,),
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
                                color: black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text('Ali Bin Abu'),
                            Divider(
                              thickness: 2,
                              color: black,
                            ),
                            Text(
                              'No Rujukan',
                              style: TextStyle(
                                color: black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text('MBPJ-023423423'),
                            Divider(
                              thickness: 2,
                              color: black,
                            ),
                            Text(
                              'No Akaun',
                              style: TextStyle(
                                color: black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text('123456789'),
                            Divider(
                              thickness: 2,
                              color: black,
                            ),
                            Text(
                              'ID Transaksi',
                              style: TextStyle(
                                color: black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text('ID12332523'),
                            Divider(
                              thickness: 2,
                              color: black,
                            ),
                            Text(
                              'Kaedah Transaksi',
                              style: TextStyle(
                                color: black,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text('e-Pay MBPJ'),
                            Divider(
                              thickness: 2,
                              color: black,
                            ),
                            Text(
                              'Jumlah(RM)',
                              style: TextStyle(
                                color: black,
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
                                  color: black,
                                )
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
