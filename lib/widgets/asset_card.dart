import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AssetCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String text1;
  final String text2;
  final String text3;
  const AssetCard({Key? key, required this.icon, required this.title, required this.text1, required this.text2, required this.text3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: MediaQuery.of(context).size.height * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(color: Color.fromARGB(255, 63, 61, 61), borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Icon(icon, size: 35),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(title, style: GoogleFonts.workSans(fontSize: 18, fontWeight: FontWeight.bold)),
                Text(text1, style: GoogleFonts.workSans()),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(text2, style: GoogleFonts.workSans(fontSize: 17, fontWeight: FontWeight.bold)),
                Text(text3, style: GoogleFonts.workSans()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
