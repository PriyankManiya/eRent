import 'package:e_sewa/theme.dart';
import 'package:flutter/material.dart';

class CariPermohonan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buttonCarian() {
      return Container(
        padding: EdgeInsets.only(left: 15, right: 10),
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: yellow,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Carian',
              style: textBlack.copyWith(
                fontSize: 24,
              ),
            ),
            Icon(
              Icons.search,
              color: black,
              size: 34,
            ),
          ],
        ),
      );
    }

    Widget pasar() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/pembayaran-page');
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
              ),
              width: 154,
              height: 98,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/image_pasar_a.png'),
                ),
              ),
            ),
          ),
          Text('Pasar A',style: textBlack.copyWith(fontSize: 15),),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            width: 154,
            height: 98,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('assets/image_pasar_b.png'),
              ),
            ),
          ),
          Text('Pasar B',style: textBlack.copyWith(fontSize: 15),),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            width: 154,
            height: 98,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('assets/image_pasar_d.png'),
              ),
            ),
          ),
          Text('Pasar D',style: textBlack.copyWith(fontSize: 15),),
        ],
      );
    }

    Widget content() {
      return Container(
          padding: EdgeInsets.only(left: 15, right: 10),
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: yellow,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              pasar(),
              pasar(),
            ],
          ));
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios_new_sharp)),
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
              SizedBox(height: 15,),
              buttonCarian(),
              SizedBox(height: 15,),
              content(),
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
