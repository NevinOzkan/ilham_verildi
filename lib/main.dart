import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: "İlham Ver"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Image.asset("Images/stevejobs.jpeg"),
            Text(
              "Steve Jobs",
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
                fontSize: ekranGenisligi / 25,
              ),
            ),
            Spacer(),
            Text(
              "Dünyayı değiştirecek insanlar, onu değiştirebileceklerini düşünecek kadar çılgın olanlardır.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ekranGenisligi / 25,
              ),
            ),
            Spacer(),
            ElevatedButton(
              child: Text(
                "İLHAM VER",
                style: TextStyle(fontSize: ekranGenisligi / 25),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.redAccent),
              onPressed: () {
                print("İlham Verildi");
              },
            ),
          ],
        ));
  }
}
