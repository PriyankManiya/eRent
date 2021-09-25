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
            color: Colors.black.withOpacity(0.7),
            size: 24,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TextFormField(
              style: textBlack,
              cursorColor: Colors.black,
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
            color: Colors.black.withOpacity(0.7),
            size: 24,
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: TextFormField(
              style: textBlack,
              cursorColor: Colors.black,
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
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: RaisedButton(
            color: Colors.black,
            shape: RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(5),
   ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 13),
              child: Text(
                "Log Masuk",
                style: textWhite.copyWith(
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
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
                    style: textBlack.copyWith(
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
                  color: white,
                  borderRadius: BorderRadius.circular(5),
                  // border: Border.all(color: Colors.black.withOpacity(0.3)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6,
                      offset: Offset(1, 10),
                      color: grey.withOpacity(0.4),
                    ),
                  ],
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
                  ],
                ),
              ),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}
