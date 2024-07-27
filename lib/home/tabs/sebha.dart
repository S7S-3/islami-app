import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter =0;
  double angel = 0;
  List<String> Azkar =[
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "الله اكبر",
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/images/head1.png"),
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Transform.rotate(
                angle: angel,
                child: GestureDetector(
                    onTap:() {
                      OnTap()
                    ;},
                    child: Image.asset("assets/images/body1.png")),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(27.0),
          child: Text(
            "عدد التسبيحات",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).primaryColor),
              child: Text("$counter"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).primaryColor),
              child: Text("${Azkar[index]}"),
            ),
          ),
        ),
      ],
    );
  }
  OnTap(){
    counter++;
    if(counter %33 == 0){
      index++;
      counter = 0;
    }
    if(index ==Azkar.length){
      index = 0;
    }
    angel += 360/4;
    setState(() {

    });
  }
}
