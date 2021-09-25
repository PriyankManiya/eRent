import 'package:e_sewa/theme.dart';
import 'package:flutter/material.dart';

class SewaanBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (2 * 30),
          child: AlertDialog(
            backgroundColor: white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.close,
                        color: purple,
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Icon(
                    Icons.check_outlined,
                    size: 72,
                    color: Color(0xff2699FB),
                  ),
                  SizedBox(height: 12),
                  Center(
                    child: Text(
                      'Bayaran Anda Berjaya !',
                      style: textBlack.copyWith(
                        color: Color(0xff2699FB),
                      ),
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
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 107,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6,
                      offset: Offset(1, 1),
                      color: purple.withOpacity(0.2),
                    ),
                  ],
                  // borderRadius: BorderRadius.only(
                  //   bottomLeft: Radius.circular(80),
                  // ),
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
                      'Online Banking (e-Sewa)',
                      style: textBlack.copyWith(
                        fontSize: 26,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Image.asset(
                'assets/kopi.jpg',
                width: double.infinity,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 19,
                  vertical: 20,
                ),
                child: Icon(
                  Icons.list,
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Center(
                  child: Text(
                    'CIMB Clicks',
                    style: textWhite.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: Center(
              child: Text(
                'Please enter your login credentials',
                style: textBlack.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 19,
            ),
            child: Text(
              'User ID',
              style: textGrey.copyWith(
                fontWeight: bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19,
              right: 19,
            ),
            child: TextFormField(
              style: textGrey,
              decoration: InputDecoration(
                hintText: 'Ali Bin Abu',
                hintStyle: textBlack,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 19,
              right: 19,
            ),
            width: double.infinity,
            height: 40,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {
                showSuccessDialog();
              },
              child: Text(
                'Login',
                style: textBlack.copyWith(
                  fontSize: 20,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Center(
              child: Text(
                'Forget User ID Or Password',
                style: textBlue.copyWith(
                  fontWeight: bold,
                ),
              ),
            ),
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
