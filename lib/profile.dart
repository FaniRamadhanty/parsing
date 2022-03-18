// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:parsing/sample_json.dart';
// import 'package:flutter/services.dart';
// import 'package:parsing/profile.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   State<ProfilePage> createState() => _ProfilePageStage();
// }

// class _ProfilePageStage extends State<ProfilePage> {
//   late String _name = "";
//   late String _age = "";
//   late String _gender = "";
//   List _hobi = [];
//   late String _articles = "";
//   late String _github = "";
//   late String _contact = "";

//   Future _loadSampleJson() async {
//     String jsonString = await rootBundle.loadString("assets/sample.json");
//     final jsonData = json.decode(jsonString);
//     Sample sample = Sample.fromJson(jsonData);
//     setState(() {
//       _name = sample.name.toString();
//       _age = sample.age.toString();
//       _gender = sample.gender.toString();
//       _hobi = sample.hobi!.toList();
//       _articles = sample.articles.toString();
//       _github = sample.github.toString();
//       _contact = sample.contact.toString();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Read Json'),
//         ),
//         body: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: ListView(
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         _loadSampleJson();
//                       },
//                       child: Container(
//                         height: 50,
//                         width: 150,
//                         color: Colors.grey,
//                         alignment: Alignment.center,
//                         child: const Text("Read JSON File"),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                                      padding: const EdgeInsets.all(5),
//                   child: Container(
//                     height: 50,
//                     width: 100,
//                     margin: const EdgeInsets.all(10),
//                     padding: const EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.green.shade200),
//                     child: Text(
//                       _name,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 12.0),
//                   child: Container(
//                     height: 50,
//                     width: 100,
//                     margin: const EdgeInsets.all(10),
//                     padding: const EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.green.shade200),
//                     child: Text(
//                       _age,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 12.0),
//                   child: Container(
//                     height: 50,
//                     width: 100,
//                     margin: const EdgeInsets.all(10),
//                     padding: const EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.green.shade200),
//                     child: Text(
//                       _gender,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 12.0),
//                   child: Container(
//                     height: 150,
//                     width: 100,
//                     margin: const EdgeInsets.all(10),
//                     padding: const EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.green.shade200),
//                     child: Text(
//                       _gender,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 12.0),
//                   child: Container(
//                     height: 150,
//                     width: 100,
//                     margin: const EdgeInsets.all(10),
//                     padding: const EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.green.shade200),
//                     child: ListView.builder(
//                       itemCount: _hobi.length,
//                       shrinkWrap: true,
//                       itemBuilder: (context, index) => ListTile(
//                         title: Text(_hobi[index]),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 12.0),
//                   child: Container(
//                     height: 150,
//                     width: 100,
//                     margin: const EdgeInsets.all(10),
//                     padding: const EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.green.shade200),
//                     child: Text(
//                       _contact,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 12.0),
//                   child: Container(
//                     height: 150,
//                     width: 100,
//                     margin: const EdgeInsets.all(10),
//                     padding: const EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.green.shade200),
//                     child: Text(
//                       _github,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 12.0),
//                   child: Container(
//                     height: 150,
//                     width: 100,
//                     margin: const EdgeInsets.all(10),
//                     padding: const EdgeInsets.all(15),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.green.shade200),
//                     child: Text(
//                       _articles,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

// //   @override
// //   Widget build(BuildContext context) {
// //     // TODO: implement build
// //     throw UnimplementedError();
// //   }
// // }

// // import 'package:flutter/material.dart';

// // class ProfilePage extends StatefulWidget {
// //   ProfilePage({Key? key}) : super(key: key);

// //   @override
// //   State<ProfilePage> createState() => _ProfilePageState();
// // }

// // class _ProfilePageState extends State<ProfilePage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         backgroundColor: Colors.green[100],
// //         appBar: AppBar(
// //           title: Text("My Profile"),
// //           backgroundColor: Colors.green,
// //         ),
// //          body: Container(
// //         color: Colors.green.shade50,
// //         alignment: Alignment.center,
// //         child: ListView(
// //           children: <Widget>[
// //             Container(
// //                 margin: EdgeInsets.all(25),
// //                 padding: EdgeInsets.all(10),
// //                 height: 230,
// //                 width: 350,
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(20),
// //                     color: Colors.green.shade200),
// //                 ),
// //             Container(
// //                 margin: EdgeInsets.all(25) ,
// //                 padding: EdgeInsets.all(10),
// //                 height: 230,
// //                 width: 350,
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(20),
// //                     color: Colors.green.shade200),
// //             ),
// //             Container(
// //                 margin: EdgeInsets.all(25),
// //                 padding: EdgeInsets.all(10),
// //                 height: 230,
// //                 width: 350,
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(20),
// //                     color: Colors.green.shade200),
// //             ),
// //               Container(
// //               margin: EdgeInsets.all(25),
// //               padding: EdgeInsets.all(10),
// //               height: 230,
// //               width: 350,
// //               decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(20),
// //                   color: Colors.green.shade200),
// //             ),

// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:parsing/sample_json.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String _name = "";
  late String _age = "";
  late String _gender = "";
  late String _username = "";
  late String _repository = "";
  List _hobi = [];
  List<Article> _articles = [];

  Future _loadSampleJson() async {
    String jsonString = await rootBundle.loadString("assets/sample.json");
    final jsonData = json.decode(jsonString);
    Sample sample = Sample.fromJson(jsonData);

    setState(() {
      _name = sample.name.toString();
      _age = sample.age.toString();
      _username = sample.github!.username.toString();
      _repository = sample.github!.repository.toString();
      _hobi = sample.hobi!.toList();
      _articles = sample.articles!.toList();
    });
  }

  void initState() {
    _loadSampleJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Parsing Json')),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.blueAccent,
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            Card(
              margin: EdgeInsets.all(20),
              color: Colors.lightBlueAccent,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.green, Colors.yellowAccent]),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 1), // changes position of shadow
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Container(
                    child: Center(
                        child: Text(
                      "Nama : \n" + _name,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    )),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              color: Colors.lightBlueAccent,
              child: Container(
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient( colors: [Colors.green, Colors.yellowAccent]),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 1), // changes position of shadow
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Container(
                    child: Center(
                        child: Text(
                      "Umur : \n" + _age + " Tahun",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    )),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              color: Colors.lightBlueAccent,
              child: Container(
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient( colors: [Colors.green, Colors.yellowAccent]),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 1), // changes position of shadow
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Container(
                    child: Center(
                        child: Text(
                      "Jenis Kelamin : \n" + _gender,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    )),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              color: Colors.lightBlueAccent,
              child: Container(
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(
                      colors: [Colors.green, Colors.yellowAccent]),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 1), // changes position of shadow
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Container(
                    child: Center(
                        child: Text(
                      "Github : " +
                          _username +
                          "\n Repository : " +
                          _repository,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    )),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              height: MediaQuery.of(context).size.height * 0.30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _hobi.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Card(
                      color: Colors.lightBlueAccent,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.green, Colors.yellowAccent]),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            )
                          ],
                        ),
                        child: Center(
                            child: Text(
                          _hobi[index].toString(),
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        )),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              height: MediaQuery.of(context).size.height * 0.30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _articles.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Card(
                      color: Colors.lightBlueAccent,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                             colors: [Colors.green, Colors.yellowAccent]),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            )
                          ],
                        ),
                        child: Center(
                            child: Text(
                              _articles[index].title +
                              _articles[index].subtitle,
                                 textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        )),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
