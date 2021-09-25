import 'package:flutter/material.dart';

import '../theme.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget emailInput() {
      return Row(
        children: [
          Icon(
            Icons.person,
            color: yellow.withOpacity(0.7),
            size: 24,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TextFormField(
              style: textWhite,
              cursorColor: yellow,
              decoration: InputDecoration.collapsed(
                hintText: 'Your Email Address',
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
            color: yellow.withOpacity(0.7),
            size: 24,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TextFormField(
              style: textWhite,
              cursorColor: yellow,
              decoration: InputDecoration.collapsed(
                hintText: 'Kata Laluan',
                hintStyle: textGrey,
              ),
            ),
          ),
        ],
      );
    }

    Widget button() {
      return Expanded(
        child: RaisedButton(
            color: yellow,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 11),
              child: Text(
                "Log Masuk",
                style: textBlack.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            }),
      );
      // return Container(
      //   margin: EdgeInsets.only(top: 33),
      //   width: 162,
      //   height: 50,
      //   child: TextButton(
      //     style: TextButton.styleFrom(
      //       backgroundColor: orange,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(6),
      //       ),
      //     ),
      //     onPressed: () {
      //       Navigator.pushNamed(context, '/home');
      //     },
      //     child: Text(
      //       'Log Masuk',
      //       style: textBlack.copyWith(
      //         fontSize: 20,
      //         fontWeight: bold,
      //       ),
      //     ),
      //   ),
      // );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_logo.png',
                width: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'e- ',
                    style: textYellow.copyWith(
                      fontSize: 56,
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'SEWA',
                    style: textWhite.copyWith(
                      fontSize: 56,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 8,
                  left: 37,
                  right: 38,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 35,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                  // border: Border.all(color: Colors.black.withOpacity(0.3)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: emailInput(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: passwordInput(),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        button(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
