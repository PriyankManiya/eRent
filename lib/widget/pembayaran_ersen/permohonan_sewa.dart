import 'package:e_sewa/theme.dart';
import 'package:flutter/material.dart';

class PermohonanSewa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * 30),
          child: AlertDialog(
            backgroundColor: white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', (route) => false);
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.close,
                        color: purple,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Icon(
                    Icons.check_outlined,
                    size: 72,
                    color: Color(0xff3E4095),
                  ),
                  SizedBox(height: 12),
                  Center(
                    child: Text(
                      'Permohanan anda telah dihantar \nSekiranya anda tidak mendapat  \nsebarang pemakluman dalam tempoh masa tiga (3) bulan dari pihak Majlis. \nMaka permohonan anda secara \nautomatik telah dibatalkan',
                      style: textBlack.copyWith(
                        color: Color(0xff2699FB),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

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
                height: 130,
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
                        child: Icon(Icons.arrow_back)),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Pasar A',
                      style: textBlack.copyWith(
                        fontSize: 26,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 10,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffEFEFFA),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ID',
                        style: TextStyle(
                          color: Color(
                            0XFFB1B1D2,
                          ),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text('650327107091'),
                      Divider(
                        thickness: 2,
                        color: Color(0xffB3DAF7),
                      ),
                      Text(
                        'NAMA',
                        style: TextStyle(
                          color: Color(
                            0XFFB1B1D2,
                          ),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text('AHMAD FAISAL BIN HJ JUMALI'),
                      Divider(
                        thickness: 2,
                        color: Color(0xffB3DAF7),
                      ),
                      Text(
                        'NO TELEFON',
                        style: TextStyle(
                          color: Color(
                            0XFFB1B1D2,
                          ),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text('0192247696'),
                      Divider(
                        thickness: 2,
                        color: Color(0xffB3DAF7),
                      ),
                      Text(
                        'KUMPULAN PENGGUNA',
                        style: TextStyle(
                          color: Color(
                            0XFFB1B1D2,
                          ),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text('PENGGUNA SISTEM PENILAIAN'),
                      Divider(
                        thickness: 2,
                        color: Color(0xffB3DAF7),
                      ),
                      SizedBox(height: 30),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: orange,
                          ),
                        ),
                        child: Row(
                          children: [
                            Text('Muat naik dokumen'),
                            Spacer(),
                            Container(
                              height: 40,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: orange,
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Pilih Fail',
                                  style: textBlack,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: orange,
                          ),
                        ),
                        child: Row(
                          children: [
                            Text('Muat naik dokumen'),
                            Spacer(),
                            Container(
                              height: 40,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: orange,
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Pilih Fail',
                                  style: textBlack,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                      Center(
                        child: Container(
                          width: 159,
                          height: 50,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: orange,
                            ),
                            onPressed: () {
                              showSuccessDialog();
                            },
                            child: Text(
                              'Mohon',
                              style: textBlack.copyWith(
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
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
      body: Column(
        children: [
          header(),
        ],
      ),
    );
  }
}
