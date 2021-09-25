import 'package:e_sewa/theme.dart';
import 'package:flutter/material.dart';

class TukarPemilikPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget nameInput() {
      return Row(
        children: [
          Icon(
            Icons.person,
            color: grey,
            size: 24,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TextFormField(
              style: textGrey,
              decoration: InputDecoration.collapsed(
                hintText: 'Nama',
                hintStyle: textGrey,
              ),
            ),
          ),
        ],
      );
    }

    Widget emailInput() {
      return Row(
        children: [
          Icon(
            Icons.email,
            color: grey,
            size: 24,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TextFormField(
              style: textGrey,
              decoration: InputDecoration.collapsed(
                hintText: 'Email',
                hintStyle: textGrey,
              ),
            ),
          ),
        ],
      );
    }

    Widget teleponInput() {
      return Row(
        children: [
          Icon(
            Icons.phone,
            color: grey,
            size: 24,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TextFormField(
              style: textGrey,
              decoration: InputDecoration.collapsed(
                hintText: 'No . Telefon',
                hintStyle: textGrey,
              ),
            ),
          ),
        ],
      );
    }

    Widget passwordInput() {
      return Row(
        children: [
          Icon(
            Icons.lock,
            color: grey,
            size: 24,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TextFormField(
              style: textGrey,
              decoration: InputDecoration.collapsed(
                hintText: 'Tapak Sewaan',
                hintStyle: textGrey,
              ),
            ),
          ),
        ],
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_sharp,
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Tukar Pemilik Profil',
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
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 13,
                            bottom: 10,
                          ),
                          width: 117,
                          height: 117,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'assets/image_logo.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 100,
                            bottom: 10,
                          ),
                          width: 117,
                          height: 40,
                          decoration: BoxDecoration(
                            color: orange.withOpacity(0.8),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Tukar Gambar \nProfil',
                              style: textBlack.copyWith(
                                fontSize: 10,
                                fontWeight: bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 19,
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 19,
                      ),
                      decoration: BoxDecoration(
                        color: white,
                      ),
                      child: Column(
                        children: [
                          nameInput(),
                          Divider(
                            thickness: 1,
                            color: grey,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          emailInput(),
                          Divider(
                            thickness: 1,
                            color: grey,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          teleponInput(),
                          Divider(
                            thickness: 1,
                            color: grey,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          passwordInput(),
                          Divider(
                            thickness: 1,
                            color: grey,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      width: 162,
                      height: 60,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Text(
                          'Tukar Pemilik',
                          style: textBlack.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                      ),
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
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          header(),
        ],
      ),
    );
  }
}
