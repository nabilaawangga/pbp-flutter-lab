import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/databudget.dart';

List<Data> listData = [];

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _judul = "";
    String _nominal = "";
    String _jenis = "Pengeluaran";
    List<String> jenisKeuangan = ["Pemasukkan", "Pengeluaran"];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form Budget'),
            ),
            // menu
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
                        Navigator.pop(
                          context,
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
                  ],
                ),
              ),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                            children: [
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Contoh: Beli Sate Pacil",
                                            labelText: "Judul",
                                            // Menambahkan icon agar lebih intuitif
                                            icon: const Icon(Icons.people),
                                            // Menambahkan circular border agar lebih rapi
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                            ),
                                        ),
                                        // Menambahkan behavior saat nama diketik 
                                        onChanged: (String? value) {
                                            setState(() {
                                                _judul = value!;
                                            });
                                        },
                                        // Menambahkan behavior saat data disimpan
                                        onSaved: (String? value) {
                                            setState(() {
                                                _judul = value!;
                                            });
                                        },
                                        // Validator sebagai validasi form
                                        validator: (String? value) {
                                            if (value == null || value.isEmpty) {
                                                return 'Judul tidak boleh kosong!';
                                            }
                                            return null;
                                        },
                                    ),
                                ),  // buat padding 1
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: "Contoh: 15000",
                                            labelText: "Nominal",
                                            // Menambahkan icon agar lebih intuitif
                                            icon: const Icon(Icons.people),
                                            // Menambahkan circular border agar lebih rapi
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                            ),
                                        ),
                                        // Menambahkan behavior saat nama diketik 
                                        onChanged: (String? value) {
                                            setState(() {
                                                _nominal = value!;
                                            });
                                        },
                                        // Menambahkan behavior saat data disimpan
                                        onSaved: (String? value) {
                                            setState(() {
                                                _nominal = value!;
                                            });
                                        },
                                        // Validator sebagai validasi form
                                        validator: (String? value) {
                                            if (value == null || value.isEmpty) {
                                                return 'Nominal tidak boleh kosong!';
                                            }
                                            return null;
                                        },
                                    ),
                                ),  // buat padding 2
                                DropdownButton(
                                    value: _jenis,
                                    hint: const Text("Pilih Jenis"),
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: jenisKeuangan.map((String items) {
                                        return DropdownMenuItem(
                                            value: items,
                                            child: Text(items),
                                        );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                        setState(() {
                                            _jenis = newValue!;
                                        });
                                    },
                                ), // buat dropdown jenis
                                TextButton(
                                    child: const Text(
                                    "Simpan",
                                    style: TextStyle(color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                                    ),
                                    onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                            Data data = Data(_judul.toString(), _nominal.toString(), _jenis.toString());
                                            listData.add(data);
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                    return Dialog(
                                                        shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(10),
                                                        ),
                                                        elevation: 15,
                                                        child: Container(
                                                            child: ListView(
                                                                padding: const EdgeInsets.only(top: 20, bottom: 20),
                                                                shrinkWrap: true,
                                                                children: <Widget>[
                                                                    const Padding(
                                                                        padding: EdgeInsets.all(10),
                                                                        child: Center(
                                                                        child: Text("Data telah tersimpan."),
                                                                        ),
                                                                    ),
                                                                    Padding(
                                                                        padding: const EdgeInsets.all(10),
                                                                        child: TextButton(
                                                                        onPressed: () {
                                                                            Navigator.pop(context);
                                                                        },
                                                                        child: const Text('Kembali'),
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    );
                                                },
                                            );
                                        }
                                    },
                                ),
                            ], // tutup
                        ),
                    ),
                ),
            ),
        );
    }
}