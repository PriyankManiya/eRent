import 'package:e_sewa/theme.dart';
import 'package:flutter/material.dart';

class FaqsPage extends StatelessWidget {
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
                height: 107,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'FAQs',
                      style: textYellow.copyWith(
                        fontSize: 26,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 26,
                  left: 16,
                  right: 16,
                ),
                padding: EdgeInsets.only(
                  top: 29,
                  left: 18,
                  right: 40,
                ),
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cara mendapatkan applikasi ini',style:TextStyle(fontSize: 16,color: Colors.white)
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Muat turun di Playstore and Appstrore',style:TextStyle(fontSize: 16,color: Colors.white)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Kaedah bayaran di Applikasi',style:TextStyle(fontSize: 16,color: Colors.white)
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'ePay, Kat Kredit dan FPX',style:TextStyle(fontSize: 16,color: Colors.white)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      'Panduan Membayar di Applikasi',style:TextStyle(fontSize: 16,color: Colors.white)
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Sila ikuti arahan dibawah ',style:TextStyle(fontSize: 16,color: Colors.white)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      'Lupa Kata Laluan',style:TextStyle(fontSize: 16,color: Colors.white)
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Tekan butang Reset',style:TextStyle(fontSize: 16,color: Colors.white)
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey.withOpacity(0.5),
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
      backgroundColor: yellow.withOpacity(0.1),
      body: Column(
        children: [
          header(),
        ],
      ),
    );
  }
}
