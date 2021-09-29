import 'package:e_sewa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class PemabayaranElsen extends StatefulWidget {
  @override
  _PemabayaranElsenState createState() => _PemabayaranElsenState();
}

class _PemabayaranElsenState extends State<PemabayaranElsen> {
  String selectedDate = 'Date';
  String endDate = 'Date';
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
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: yellow,
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
              Container(
                padding: EdgeInsets.only(top: 61),
                margin: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 10,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: yellow,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/profil_pasar_a.png',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text('Tarikh Mula Sewaan',
                                  style: textBlack.copyWith(fontSize: 16)),
                              Container(
                                width: 152,
                                height: 34,
                                margin: EdgeInsets.only(top: 9),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17))),
                                  onPressed: () {
                                    DatePicker.showDatePicker(context,
                                        showTitleActions: true,
                                        minTime: DateTime(2018),
                                        maxTime: DateTime.utc(2021, 12, 31),
                                        theme: DatePickerTheme(
                                            headerColor: Colors.orange,
                                            backgroundColor: Colors.blue,
                                            itemStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                            doneStyle: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16)),
                                        onChanged: (date) {
                                     setState(() {
                                        selectedDate =date.toString().split(" ")[0];
                                        endDate = "2021-12-31";
                                      });
                                      
                                    }, onConfirm: (date) {
                                      setState(() {
                                        selectedDate =date.toString().split(" ")[0];
                                        endDate = "2021-12-31";
                                      });
                                    },
                                        currentTime: DateTime.now(),
                                        locale: LocaleType.id);
                                  },
                                  child: Text(
                                    selectedDate,
                                    style: textWhite.copyWith(
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Text('Harga Sewa Bulanan',
                                  style: textBlack.copyWith(fontSize: 16)),
                              Container(
                                width: 94,
                                height: 34,
                                margin: EdgeInsets.only(top: 9),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  color: black,
                                ),
                                child: Center(
                                  child: Text(
                                    'RM 140',
                                    style: textWhite.copyWith(
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Tarikh Mula Sewaan',
                                  style: textBlack.copyWith(fontSize: 16)),
                              Container(
                                width: 152,
                                height: 34,
                                margin: EdgeInsets.only(top: 9),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17))),
                                  onPressed: () {
                                    // DatePicker.showDatePicker(context,
                                    //     showTitleActions: true,
                                    //     minTime: DateTime(2018),
                                    //     maxTime: DateTime.utc(2021, 12, 31),
                                    //     theme: DatePickerTheme(
                                    //         headerColor: Colors.orange,
                                    //         backgroundColor: Colors.blue,
                                    //         itemStyle: TextStyle(
                                    //             color: Colors.white,
                                    //             fontWeight: FontWeight.bold,
                                    //             fontSize: 18),
                                    //         doneStyle: TextStyle(
                                    //             color: Colors.white,
                                    //             fontSize: 16)),
                                    //     onChanged: (date) {
                                    //  setState(() {
                                    //     selectedDate =date.toString().split(" ")[0];
                                    //     endDate = "2021-12-31";
                                    //   });
                                    // }, onConfirm: (date) {
                                    // setState(() {
                                    //     selectedDate =date.toString().split(" ")[0];
                                    //     endDate = "2021-12-31";
                                    //   });
                                    // },
                                    //     currentTime: DateTime.now(),
                                    //     locale: LocaleType.id);
                                  },
                                  child: Text(
                                    endDate,
                                    style: textWhite.copyWith(
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 48,
                          right: 10,
                          bottom: 23,
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 11,
                              vertical: 6,
                            ),
                            backgroundColor: black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/permohonan-sewa');
                          },
                          child: Text(
                            'Tempah',
                            style: textWhite.copyWith(
                              fontSize: 20,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                    )
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
