import 'package:e_sewa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class PemabayaranElsen extends StatelessWidget {
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
                padding: EdgeInsets.only(top: 61),
                margin: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 10,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffEFEFFA),
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
                              Text(
                                'Tarikh Mula Sewaan',
                              ),
                              Container(
                                width: 152,
                                height: 34,
                                margin: EdgeInsets.only(top: 9),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17))),
                                  onPressed: () {
                                    DatePicker.showDatePicker(context,
                                        showTitleActions: true,
                                        minTime: DateTime(2018),
                                        maxTime: DateTime.now(),
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
                                      print('change $date in time zone ' +
                                          date.timeZoneOffset.inHours
                                              .toString());
                                    }, onConfirm: (date) {
                                      print('confirm $date');
                                    },
                                        currentTime: DateTime.now(),
                                        locale: LocaleType.id);
                                  },
                                  child: Text(
                                    'Date',
                                    style: textBlack.copyWith(
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Text(
                                'Harga Sewa Bulanan',
                              ),
                              Container(
                                width: 94,
                                height: 34,
                                margin: EdgeInsets.only(top: 9),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Center(
                                  child: Text('RM 140'),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Tarikh Mula Sewaan',
                              ),
                              Container(
                                width: 152,
                                height: 34,
                                margin: EdgeInsets.only(top: 9),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17))),
                                  onPressed: () {
                                    DatePicker.showDatePicker(context,
                                        showTitleActions: true,
                                        minTime: DateTime(2018),
                                        maxTime: DateTime.now(),
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
                                      print('change $date in time zone ' +
                                          date.timeZoneOffset.inHours
                                              .toString());
                                    }, onConfirm: (date) {
                                      print('confirm $date');
                                    },
                                        currentTime: DateTime.now(),
                                        locale: LocaleType.id);
                                  },
                                  child: Text(
                                    'Date',
                                    style: textBlack.copyWith(
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
                            backgroundColor: orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/permohonan-sewa');
                          },
                          child: Text(
                            'Tempah',
                            style: textBlack.copyWith(
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
      body: Column(
        children: [
          header(),
        ],
      ),
    );
  }
}
