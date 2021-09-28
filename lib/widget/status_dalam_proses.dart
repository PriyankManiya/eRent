import 'package:e_sewa/theme.dart';
import 'package:flutter/material.dart';

class StatusDalamProses extends StatelessWidget {
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
                          'Status Permohonan',
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
                              Navigator.pushNamed(context, '/status-page');
                            },
                            child: Text(
                              'Serahan',
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
                              'Dalam Proses',
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
                              Navigator.pushNamed(context, '/status-terima');
                            },
                            child: Text(
                              'Terima',
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 100),
                      child: Row(
                        children: [
                          Text(
                            'Jenis',
                            style: textBlack.copyWith(fontSize: 15),
                          ),
                          Spacer(),
                          Text('Status',
                              style: textBlack.copyWith(fontSize: 15))
                        ],
                      ),
                    ),
                    SizedBox(height: 13),
                    Divider(
                      thickness: 2,
                      color: black,
                    ),
                    SizedBox(height: 13),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Pasar A',
                            style: textBlack.copyWith(fontSize: 15)),
                        Text('Sedang di Proses oleh Pegawai',
                            style: textBlack.copyWith(fontSize: 15))
                      ],
                    ),
                    SizedBox(height: 13),
                    Divider(
                      thickness: 2,
                      color: black,
                    ),
                    SizedBox(height: 13),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Pasar B',
                            style: textBlack.copyWith(fontSize: 15)),
                        Text('Sedang di Proses oleh Pegawai',
                            style: textBlack.copyWith(fontSize: 15))
                      ],
                    ),
                    SizedBox(height: 13),
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
