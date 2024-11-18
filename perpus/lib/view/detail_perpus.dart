import 'package:flutter/material.dart';

class PeprpusDetail extends StatefulWidget {
  var perpus;
  var isi;
  PeprpusDetail({this.perpus, this.isi});

  @override
  State<PeprpusDetail> createState() => _PeprpusDetailState();
}

class _PeprpusDetailState extends State<PeprpusDetail> {
  @override
  Widget build(BuildContext context) {
    // final arg = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.perpus.title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              "ID :" + " " + widget.isi.Id.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(),
        child: Center(
          child: Column(
            children: [
              Text("Deskripsi",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text(
                widget.isi.Deskripsi,
                style: TextStyle(fontSize: 17),
              ),
              Image(
                image: AssetImage(
                  widget.isi.FotoBuku,
                ),
                width: 300,
              ),
              Text("Penerbit",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text(
                widget.isi.Penerbit,
                style: TextStyle(fontSize: 17),
              ),
              Text("Karya",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text(
                widget.isi.Karya,
                style: TextStyle(fontSize: 17),
              ),
              Text("Stok",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text(
                widget.isi.Stok.toString(),
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}