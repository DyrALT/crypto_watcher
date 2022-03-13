import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyScaffold extends StatelessWidget {
  final String title;
  final Widget child;
  const MyScaffold({Key? key, required this.title, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.orbitron(fontSize: 30), //cinzel,orbitron,advent pro
        ),
        leading: Navigator.canPop(context)
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                  decoration: BoxDecoration(border: Border.all(color: Colors.white), borderRadius: const BorderRadius.all(Radius.circular(10))),
                ),
              )
            : const SizedBox(),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 6, 38, 75),
          Color.fromARGB(255, 19, 77, 124),
          Color.fromARGB(255, 24, 95, 153),
          Color.fromARGB(239, 32, 124, 199),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            child
          ],
        ),
      ),
    );
  }
}
