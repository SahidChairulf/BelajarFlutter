import 'package:apptest/helpers/size_helper.dart';
import 'package:apptest/screens/output_form_galaxy.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormGalaxy extends StatefulWidget {
  const FormGalaxy({super.key});

  @override
  State<FormGalaxy> createState() => _FormGalaxyState();
}

class _FormGalaxyState extends State<FormGalaxy> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();

  // mendeskirpsikan variabel input
  TextEditingController namaController = TextEditingController();
  String _pilihGalaxy = "";
  TextEditingController tglPergiController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();

  final List<String> galaxy = [
    "Bima Sakti",
    "Andromeda",
    "Sombrero",
    "Black Eye",
  ];

   final Map<String, double> harga = {
    "Bima Sakti" : 100000.0,
    "Andromeda" : 200000.0,
    "Sombrero" : 300000.0,
    "Black Eye" : 400000.0,
   };

   final Map<String, String> image = {
    "Bima Sakti" : "../assets/images/galaxy_love.jpg",
    "Andromeda" : "../assets/images/galaxy_love.jpg",
    "Sombrero" : "../assets/images/galaxy_love.jpg",
    "Black Eye" : "../assets/images/galaxy_love.jpg",
   };

   double selectedharga = 10000.0;
   String selectedimage = "";

  void initState() {
    tglPergiController.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 4,
                  margin: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "FORMULIR PEMBELIAN TIKET",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          TextFormField(
                            controller: namaController,
                            decoration: InputDecoration(
                              hintText: "Full Name",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input Name';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 18),
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                                hintText: "Galaxy",
                                labelText: "Pick Your Galaxy",
                                border: OutlineInputBorder()),
                            items: galaxy.map((String items) {
                              int index = 0;
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _pilihGalaxy = newValue!;
                                selectedharga =
                                harga[_pilihGalaxy] ?? 10000.0;
                                selectedimage = image[_pilihGalaxy] ?? '';
                              });
                            },
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          TextFormField(
                            controller: jumlahController,
                            decoration: InputDecoration(
                              hintText: "how many people",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input People';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          TextFormField(
                            controller: tglPergiController,
                            decoration: InputDecoration(
                              hintText: "leaving Date",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Input leaving Date';
                              }
                              return null;
                            },
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100));
                              if (pickedDate != null) {
                                String tgl =
                                    DateFormat('yyy-MM-dd').format(pickedDate);
                                setState(() {
                                  tglPergiController.text = tgl;
                                });
                              } else {
                                print("now avalible !!");
                              }
                            },
                          ),
                          SizedBox(height: 18),
                          SizedBox(
                              width: displayWidth(context) * 0.8,
                              height: displayHeight(context) * 0.075,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(10),
                                      side: BorderSide(color: Colors.black),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Save",
                                  style: TextStyle(color: Colors.black),
                                ),
                                onPressed: () {
                                  _submit();
                                },
                              ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      String nama = namaController.text;
      String galaxy = _pilihGalaxy;
      String pergi = tglPergiController.text;
      String jumlah = jumlahController.text;
      String img = selectedimage;
      print(img);
      double totalHarga = double.parse(jumlah) * selectedharga;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutputFormGalaxy(
              nama: nama, galaxy: galaxy, pergi: pergi, jumlah: jumlah , image : img , harga : totalHarga),
        ),
      );
    }
  }
}
