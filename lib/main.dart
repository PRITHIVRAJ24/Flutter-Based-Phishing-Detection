// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:excel/excel.dart';
import 'dart:io';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

// int check() {
//   var str1 = 'www.google.com';
//   if (userPost == str1) {
//     if (kDebugMode) {
//       return 1;
//     }
//   }
//   return 0;
// }

void main() {
  runApp(MyApp());
}

String userPost = ''; // ignore: must_be_immutable

class MyApp extends StatelessWidget {
  MyApp({super.key});
  //user input
  final _textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // statusBarColor: Colors.green,
        //statusBariconBrightness:Brightness.light,
        //  statusBarBrightness:Brightness.dark,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("PDA"),
            centerTitle: true,
          ),
          //body

          body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
//body top
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        "images/pdaicon.png",
                        height: 250.0,
                        width: 150.0,
                      ),
                      // child: Text(userPost),
                    ),
                  ),
                  TextField(
                    controller: _textcontroller,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: 'Paste The Link!',
                        suffixIcon: IconButton(
                            onPressed: () {
                              _textcontroller.clear();
                            },
                            icon: const Icon(Icons.clear))),
                  ),

                  //Submit button
                  MaterialButton(
                    onPressed: () async {
                      userPost = _textcontroller.text;
                      if (userPost == 'www.google.com') {
                        var url = Uri.https(userPost);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        }
                      } else if (userPost == 'https://www.youtube.com') {
                        var url = Uri.https(userPost);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } //SnackBarPage();
                      } else if (userPost == 'www.youtube.com') {
                        var url = Uri.https(userPost);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        }
                      } else if (userPost == 'https://www.google.com') {
                        var url = Uri.https(userPost);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        }
                      } else if (userPost == 'www.gmail.com') {
                        var url = Uri.https(userPost);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        }
                      }
                      if (userPost == 'https://www.gmail.com') {
                        var url = Uri.https(userPost);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        }
                      }
                    },
                    color: Colors.blueAccent,
                    child: const Text("Lets's Check",
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              )),
        ));
  }
}

// class SnackBarPage extends StatelessWidget {
//   const SnackBarPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           final snackBar = SnackBar(
//             content: const Text('Yay! A SnackBar!'),
//             action: SnackBarAction(
//               label: 'Undo',
//               onPressed: () {
//                 
//               },
//             ),
//           );

//  
//           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//         },
//         child: const Text('Show SnackBar'),
//       ),
//     );
//   }
// }
