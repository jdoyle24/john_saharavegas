import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red.shade800,
          appBar: AppBar(
            title: Text('Lancée Dés'),
            backgroundColor: Colors.red.shade900,
          ),
          body: SaharaVegas(),
        )
      )
  );
}

class SaharaVegas extends StatefulWidget {
  @override
  State<SaharaVegas> createState() => _SaharaVegasState();
}

class _SaharaVegasState extends State<SaharaVegas> {
  int btnG=2;
  int btnD=1;
  void boutonClique()
  {
    setState(() {
      btnG=Random().nextInt(6)+1;
      btnD=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(width: 10,height: 40),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('images/dLogo.png')
            ),
          ],
        ),
        SizedBox(width: 10,height: 45),
        Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: (){
                    boutonClique();},
                  child: Image(
                    image: AssetImage('images/d$btnG.png'),
                  ),
                ),
              ),

              Expanded(
                    child: TextButton(
                      onPressed: (){
                        boutonClique();},
                      child: Image(
                        image: AssetImage('images/d$btnD.png'),
                      ),
                    ),
                  ),
            ],
          ),
        ),
        SizedBox(width: 100, height: 60),
        ElevatedButton(
            onPressed: (){boutonClique();},
            child: Text('Rouler'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(5.0),
              fixedSize: Size(200,80),
              textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, fontFamily: 'Fasthand-Regular'),
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black87,
              side: BorderSide(color: Colors.black87, width: 1),
              shape: StadiumBorder(),
            ),
        ),
      ],
    );
  }
}
