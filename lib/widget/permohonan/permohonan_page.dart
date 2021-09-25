import 'package:e_sewa/theme.dart';
import 'package:flutter/material.dart';

class PermohonanPage extends StatefulWidget {
  @override
  _PermohonanPageState createState() => _PermohonanPageState();
}

class _PermohonanPageState extends State<PermohonanPage> {
  final items = [
    'Pasar',
    'Kediaman',
    'Komersial',
    'Gerai',
  ];
  String? value;

  final items2 = [
    'Seksyen 1',
    'Seksyen 2',
    'Seksyen 3',
    'Seksyen 4',
  ];
  String? value2;

  final items3 = [
    'Kota Damansara',
    'Mutiara Damansara',
  ];
  String? value3;

  @override
  Widget build(BuildContext context) {
    Widget status() {
      return Container(
        width: double.infinity,
        height: 41,
        decoration: BoxDecoration(
          color: Color(0xff7C72FF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        child: Center(
          child: Text(
            'Sila Lengkapkan Pilihan Anda',
            style: textWhite.copyWith(
              fontSize: 20,
              fontWeight: bold,
            ),
          ),
        ),
      );
    }

    Widget dropItem() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 88,
        decoration: BoxDecoration(
          color: Color(0xffF1F9FF),
        ),
        padding: EdgeInsets.symmetric(vertical: 11, horizontal: 11),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text('Jenis Harta'),
            isExpanded: true,
            iconSize: 36,
            icon: Icon(Icons.arrow_drop_down),
            value: value,
            items: items.map(buildMenuItem).toList(),
            onChanged: (value) => setState(() => this.value = value),
          ),
        ),
      );
    }

    Widget dropItem2() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 88,
        decoration: BoxDecoration(
          color: Color(0xffF1F9FF),
        ),
        padding: EdgeInsets.symmetric(vertical: 11, horizontal: 11),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text('Seksyen'),
            isExpanded: true,
            iconSize: 36,
            icon: Icon(Icons.arrow_drop_down),
            value: value2,
            items: items2.map(buildMenuItem2).toList(),
            onChanged: (value2) => setState(() => this.value2 = value2),
          ),
        ),
      );
    }

    Widget dropItem3() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 88,
        decoration: BoxDecoration(
          color: Color(0xffF1F9FF),
        ),
        padding: EdgeInsets.symmetric(vertical: 11, horizontal: 11),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text('Kawasan'),
            isExpanded: true,
            iconSize: 36,
            icon: Icon(Icons.arrow_drop_down),
            value: value3,
            items: items3.map(buildMenuItem3).toList(),
            onChanged: (value3) => setState(() => this.value3 = value3),
          ),
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          top: 17,
          bottom: 12,
        ),
        width: 94,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              )),
          onPressed: () {
            Navigator.pushNamed(context, '/cari-permohonan');
          },
          child: Text(
            'Cari',
            style: textBlack.copyWith(
              fontSize: 20,
              fontWeight: bold,
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
                height: 107,
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
                      width: 50,
                    ),
                    Text(
                      'Permohonan Aset',
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
                  top: 26,
                  left: 16,
                  right: 16,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: blueGlow,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    status(),
                    dropItem(),
                    dropItem2(),
                    dropItem3(),
                    button(),
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

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );
  DropdownMenuItem<String> buildMenuItem2(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );

  DropdownMenuItem<String> buildMenuItem3(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );
}
