import 'package:e_sewa/theme.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class PermohonanSewa extends StatefulWidget {
  @override
  _PermohonanSewaState createState() => _PermohonanSewaState();
}

class _PermohonanSewaState extends State<PermohonanSewa> {
  String? filePath;
  pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      filePath = result.files.single.path;
      print("Sucess :: $filePath");
    } else {
      print("Data is Null");
    }
  }

  @override
  Widget build(BuildContext context) {
    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * 30),
          child: AlertDialog(
            backgroundColor: yellow,
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
                        color: black,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Icon(
                    Icons.check_outlined,
                    size: 72,
                    color: black,
                  ),
                  SizedBox(height: 12),
                  Center(
                    child: Text(
                      'Permohanan anda telah dihantar \nSekiranya anda tidak mendapat  \nsebarang pemakluman dalam tempoh masa tiga (3) bulan dari pihak Majlis. \nMaka permohonan anda secara \nautomatik telah dibatalkan',
                      style: textBlack.copyWith(),
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
                height: 130,
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
                          child: Icon(Icons.arrow_back_ios_new_sharp)),
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
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 10,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: yellow,
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
                          color: black,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text('650327107091'),
                      Divider(
                        thickness: 2,
                        color: black,
                      ),
                      Text(
                        'NAMA',
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text('AHMAD FAISAL BIN HJ JUMALI'),
                      Divider(
                        thickness: 2,
                        color: black,
                      ),
                      Text(
                        'NO TELEFON',
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text('0192247696'),
                      Divider(
                        thickness: 2,
                        color: black,
                      ),
                      Text(
                        'KUMPULAN PENGGUNA',
                        style: TextStyle(
                          color: black,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text('PENGGUNA SISTEM PENILAIAN'),
                      Divider(
                        thickness: 2,
                        color: black,
                      ),
                      SizedBox(height: 30),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: black,
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Muat naik dokumen',
                              style: textBlack.copyWith(fontSize: 16),
                            ),
                            Spacer(),
                            Container(
                              height: 40,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: black,
                                ),
                                onPressed: () {
                                  pickFile();
                                },
                                child: Text(
                                  'Pilih Fail',
                                  style: textWhite.copyWith(
                                      fontWeight: FontWeight.w600),
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
                            color: black,
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Muat naik dokumen',
                              style: textBlack.copyWith(fontSize: 16),
                            ),
                            Spacer(),
                            Container(
                              height: 40,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: black,
                                ),
                                onPressed: () {
                                  pickFile();
                                },
                                child: Text(
                                  'Pilih Fail',
                                  style: textWhite.copyWith(
                                      fontWeight: FontWeight.w600),
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
                              backgroundColor: black,
                            ),
                            onPressed: () {
                              showSuccessDialog();
                            },
                            child: Text(
                              'Mohon',
                              style: textWhite.copyWith(
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
