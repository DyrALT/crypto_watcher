import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatisticCard extends StatelessWidget {
  final MaterialColor color;
  final String text;
  const StatisticCard({Key? key, required this.color, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.35,
      margin: const EdgeInsets.all(15),
      child: Column(
        children: [
          Expanded(
            flex: 10,
            child: Container(
                decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
              gradient: LinearGradient(colors: [color.shade900, color.shade300], begin: Alignment.topLeft, end: Alignment.bottomRight),
            )),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      '\$$text',
                      style: GoogleFonts.gothicA1(fontSize: 20, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 114, 112, 112),
        borderRadius: BorderRadius.circular(25),
        boxShadow: const [
          BoxShadow(color: Color.fromARGB(177, 171, 171, 171), blurRadius: 10, offset: Offset(0, 5)),
        ],
      ),
    );
  }
}
