import 'dart:async';
import 'dart:io';

import 'package:e_sewa/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

class Invoice extends StatefulWidget {
  @override
  _InvoiceState createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  final Completer<PDFViewController> _controller =
      Completer<PDFViewController>();

  Future<File> createFileOfPdfUrl() async {
    Completer<File> completer = Completer();
    print("Start download file from internet!");
    try {
      // "https://berlin2017.droidcon.cod.newthinking.net/sites/global.droidcon.cod.newthinking.net/files/media/documents/Flutter%20-%2060FPS%20UI%20of%20the%20future%20%20-%20DroidconDE%2017.pdf";
      // final url = "https://pdfkit.org/docs/guide.pdf";
      final url = "http://www.africau.edu/images/default/sample.pdf";
      final filename = url.substring(url.lastIndexOf("/") + 1);
      var request = await HttpClient().getUrl(Uri.parse(url));
      var response = await request.close();
      var bytes = await consolidateHttpClientResponseBytes(response);
      var dir = await getApplicationDocumentsDirectory();
      print("Download files");
      print("${dir.path}/$filename");
      File file = File("${dir.path}/$filename");

      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }

    return completer.future;
  }

  String remotePDFpath = '';
  bool isDownload = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createFileOfPdfUrl().then((f) {
      setState(() {
        remotePDFpath = f.path;
        isDownload = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
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
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: yellow,
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
                      width: 100,
                    ),
                    Text(
                      'Bil',
                      style: textBlack.copyWith(
                        fontSize: 26,
                        fontWeight: bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 24,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  child: isDownload == true
                      ? PDFView(
                          // filePath: 'http://www.africau.edu/images/default/sample.pdf',
                          filePath: remotePDFpath,
                          // '/Users/priyank/Documents/Projects/Flutter-Migrated-Project/eRENT/assets/sample.pdf',
                          enableSwipe: true,
                          swipeHorizontal: true,
                          autoSpacing: false,
                          pageFling: false,
                          onRender: (_pages) {
                            // setState(() {
                            //   pages = _pages;
                            //   isReady = true;
                            // });
                          },
                          onError: (error) {
                            print(error.toString());
                          },
                          onPageError: (page, error) {
                            print('$page: ${error.toString()}');
                          },
                          onViewCreated: (PDFViewController pdfViewController) {
                            _controller.complete(pdfViewController);
                          },
                          // onPageChanged: (int page, int total) {
                          //   print('page change: $page/$total');
                          // },
                        )
                      : Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularProgressIndicator(),
                            ],
                          ),
                        ),
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
}
