import 'package:flutter/material.dart';

void main() {
  runApp(Kronometre());
}

class Kronometre extends StatefulWidget {
  const Kronometre({super.key});

  @override
  State<Kronometre> createState() => _KronometreState();
}

class _KronometreState extends State<Kronometre> {
  int sayac =10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Kronometre"),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                sayac--;
                if(sayac==0){
                  sayac=0;
                }
              });
            },
            child: Container(
              child: Image.asset("images/number-$sayac.png"),
            ),
          ),
        ),
      ),
    );
  }

  degistir() {
    sayac--;
    print(sayac);
  }
}

