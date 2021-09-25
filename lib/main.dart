import 'package:e_sewa/pages/home/main_page.dart';
import 'package:e_sewa/pages/sign_in_page.dart';
import 'package:e_sewa/pages/splash_page.dart';
import 'package:e_sewa/widget/Common/web_view.dart';
import 'package:e_sewa/widget/pembayaran_ersen/pembayaran_page.dart';
import 'package:e_sewa/widget/pembayaran_ersen/permohonan_sewa.dart';
import 'package:e_sewa/widget/permohonan/cari_permohonan.dart';
import 'package:e_sewa/widget/permohonan/permohonan_page.dart';
import 'package:e_sewa/widget/status_dalam_proses.dart';
import 'package:e_sewa/widget/invoice.dart';
import 'package:e_sewa/widget/resit.dart';
import 'package:e_sewa/widget/sewaan_bank.dart';
import 'package:e_sewa/widget/sewaan_bayar.dart';
import 'package:e_sewa/widget/sewaan_bil.dart';
import 'package:e_sewa/widget/sewaan_page.dart';
import 'package:e_sewa/widget/status_page.dart';
import 'package:e_sewa/widget/status_terima.dart';
import 'package:e_sewa/widget/tukar_pemilik_page.dart';
import 'package:e_sewa/widget/view_resit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/home': (context) => MainPage(),
        '/tukar-pemilik': (context) => TukarPemilikPage(),
        '/sewaan-page': (context) => SewaanPage(),
        '/sewaan-bayar': (context) => SewaanBayar(),
        '/sewaan-bank': (context) => SewaanBank(),
        '/sewaan-bil': (context) => SewaanBil(),
        '/invoice': (context) => Invoice(),
        '/resit': (context) => Resit(),
        '/view-resit': (context) => ViewResit(),
        '/status-page': (context) => StatusPage(),
        '/dalam-proses': (context) => StatusDalamProses(),
        '/status-terima': (context) => StatusTerima(),
        '/permohonan-page': (context) => PermohonanPage(),
        '/cari-permohonan': (context) => CariPermohonan(),
        '/pembayaran-page': (context) => PemabayaranElsen(),
        '/webView-page': (context) => WebViewScreen(serviceUrl: "https://elesen.mbpj.gov.my/auth/login",title: "",),
        '/permohonan-sewa': (context) => PermohonanSewa(),
      },
    );
  }
}
