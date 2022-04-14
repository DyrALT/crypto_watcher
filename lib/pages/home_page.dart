import 'package:crypto_watcher/widgets/asset_card.dart';
import 'package:crypto_watcher/widgets/myscffold.dart';
import 'package:crypto_watcher/widgets/statistic_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        title: 'Crypto',
        child: Column(
          children: [
            welcomeText(),
            const SizedBox(
              height: 20,
            ),
            statisticCards(),
            const SizedBox(
              height: 15,
            ),
            assetList(context),
          ],
        ));
  }

  SingleChildScrollView statisticCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: const [
          StatisticCard(
            color: Colors.orange,
            text: '1423',
          ),
          StatisticCard(
            color: Colors.purple,
            text: '161123',
          ),
          StatisticCard(
            color: Colors.cyan,
            text: '151312',
          ),
          StatisticCard(
            color: Colors.blue,
            text: '6234',
          ),
          StatisticCard(
            color: Colors.red,
            text: '165123',
          ),
        ],
      ),
    );
  }

  Padding assetList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.05, 0, MediaQuery.of(context).size.width * 0.05, 0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Asset',
              style: GoogleFonts.staatliches(fontSize: 30),
            ),
            IconButton(iconSize: 30, icon: const Icon(Icons.add), onPressed: () {}),
          ],
        ),
        Row(
          children: const [
            Expanded(child: Divider()),
          ],
        ),
        const AssetCard(icon: Icons.currency_bitcoin, title: 'Bitcoin', text1: '0.5 BTC', text2: '\$22.642.00', text3: '-4,32%'),
        const AssetCard(icon: Icons.currency_bitcoin, title: 'Bitcoin', text1: '0.5 BTC', text2: '\$22.642.00', text3: '-4,32%'),
        const AssetCard(icon: Icons.currency_bitcoin, title: 'Bitcoin', text1: '0.5 BTC', text2: '\$22.642.00', text3: '-4,32%'),
        const AssetCard(icon: Icons.currency_bitcoin, title: 'Bitcoin', text1: '0.5 BTC', text2: '\$22.642.00', text3: '-4,32%'),
      ]),
    );
  }

  Padding welcomeText() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Welcome Back 👋',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          Text(
            'Good morning spread positivity to everyone',
            style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
