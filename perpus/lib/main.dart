import 'package:flutter/material.dart';
import 'package:perpus/view/detail_perpus.dart';
import 'package:perpus/view/home_view.dart';
import 'package:perpus/view/login_view.dart';
import 'package:perpus/view/movie_view.dart';
import 'package:perpus/view/profile_view.dart';
import 'package:perpus/view/transaksi_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeView(),
        '/login': (context) => LoginView(),
        '/transaksi': (context) => TransaksiView(),
        '/profile': (context) => ProfileView(),
        '/movie': (context) => MovieView(),
        '/perpusdetail': (contenxt) => PeprpusDetail(),
      },
    );
  }
}