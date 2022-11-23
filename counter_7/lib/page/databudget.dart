import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/formbudget.dart';
import 'package:counter_7/page/mywatchlist_page.dart';

class MyDataPage extends StatefulWidget {
    const MyDataPage({super.key});

    @override
    State<MyDataPage> createState() => _MyDataPageState();
}

class Data {
  String? judul; 
  String? nominal;
  String? jenis;
  
  Data(String judul, String nominal, String jenis) {
    this.judul = judul;
    this.nominal = nominal;
    this.jenis = jenis;
  }
}

class _MyDataPageState extends State<MyDataPage> {
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
                        Navigator.pop(
                          context,
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('My Watch List'),
                      onTap: () {
                        // Route menu ke halaman form
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
                        );
                      },
                    ),
                ],
                ),
            ), // CLOSE DRAWER
            body: Container(
                padding: const EdgeInsets.all(8),
                child: ListView(
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                        for (Data data in listData)
                        Card(
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                            color: Colors.grey,
                            ),
                          ), // buat shape
                          child: ListTile(
                            title: Text(
                                data.judul.toString(),
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                ),
                            ),
                            subtitle: Text(data.nominal.toString()),
                            trailing: Text(
                                data.jenis.toString(),
                                style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                    ],
                ),
            ),
        );
    }
}