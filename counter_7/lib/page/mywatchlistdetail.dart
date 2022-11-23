import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlistmodel.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/formbudget.dart';
import 'package:counter_7/page/databudget.dart';
import 'package:counter_7/page/mywatchlist_page.dart';

class MyWatchlistDetail extends StatelessWidget {

  const MyWatchlistDetail(
      {super.key,
      required this.watched,
      required this.title,
      required this.rating,
      required this.releaseDate,
      required this.review});

  final Watched? watched;
  final String title;
  final int rating;
  final String releaseDate;
  final String review;

  String watchStatus(Watched? status) {
    if (status == Watched.YES) {
      return "watched";
    } else {
      return "haven't watched";
    }

  }

  @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Data Budget'),
            ),
            drawer: Drawer(
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('counter_7'),
                      onTap: () {
                        // Route menu ke halaman utama
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const MyApp()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Tambah Budget'),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const MyFormPage()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Data Budget'),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const MyDataPage()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('My Watch List'),
                      onTap: () {
                        Navigator.pop(
                            context,
                        );
                      },
                    ),
                ],
                ),
            ), // CLOSE DRAWER
            body: Container(
                padding: const EdgeInsets.all(8),
                child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Center(
                    child: Text(title.toString() + '\n',
                      style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 24))),
                      Row(children: [
                          Text("Release Date: ", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          Text(releaseDate.toString().substring(0, 10), style: const TextStyle(fontSize: 18))
                        ]),
                      Row(children: [
                          Text("Rating: ", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          Text(rating.toString(), style: const TextStyle(fontSize: 18)),
                          Text("/10", style: const TextStyle(fontSize: 18))
                        ]),
                      Row(children: [
                          Text("Status: ", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          Text(watchStatus(watched), style: const TextStyle(fontSize: 18)),
                        ]),
                      Text("Review: ", style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      Text(review.toString(), style: const TextStyle(fontSize: 18)),
                ],
              )
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: 10,
                child: TextButton(
                        child: const Text(
                          "Back",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.pop(
                            context,
                          );
                        },
                      ),
              )
            ),
        );
    }
}
