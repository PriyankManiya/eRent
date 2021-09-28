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
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: black,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                dropdownColor: black,
                hint: Text(
                  'Jenis Harta',
                  style: textWhite.copyWith(color: white, fontSize: 15),
                ),
                isExpanded: true,
                iconSize: 30,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: white,
                ),
                value: value,
                style: textWhite.copyWith(),
                items: items.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() => this.value = value),
              ),
            ),
          ),
        ),
      );
    }

    Widget dropItem2() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: black,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                dropdownColor: black,
                hint: Text(
                  'Seksyen',
                  style: textWhite.copyWith(color: white, fontSize: 15),
                ),
                isExpanded: true,
                iconSize: 30,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: white,
                ),
                style: textWhite.copyWith(),
                value: value2,
                items: items2.map(buildMenuItem2).toList(),
                onChanged: (value2) => setState(() => this.value2 = value2),
              ),
            ),
          ),
        ),
      );
    }

    Widget dropItem3() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: black,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                dropdownColor: black,
                hint: Text(
                  'Kawasan',
                  style: textWhite.copyWith(color: white, fontSize: 15),
                ),
                isExpanded: true,
                iconSize: 30,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: white,
                ),
                style: textWhite.copyWith(),
                value: value3,
                items: items3.map(buildMenuItem3).toList(),
                onChanged: (value3) => setState(() => this.value3 = value3),
              ),
            ),
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
              backgroundColor: black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              )),
          onPressed: () {
            Navigator.pushNamed(context, '/cari-permohonan');
          },
          child: Text(
            'Cari',
            style: textWhite.copyWith(
              fontSize: 18,
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
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 26,
                  left: 16,
                  right: 16,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: yellow,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    status(),
                    SizedBox(
                      height: 15,
                    ),
                    dropItem(),
                    SizedBox(
                      height: 15,
                    ),
                    dropItem2(),
                    SizedBox(
                      height: 15,
                    ),
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
