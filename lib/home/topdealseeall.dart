import 'package:car_market/const/string.dart';
import 'package:car_market/home/home.dart';
import 'package:car_market/home/itemlistview.dart';
import 'package:car_market/home/selectcard1.dart';
import 'package:flutter/material.dart';

class SeeAllRoute extends StatefulWidget {
  const SeeAllRoute({super.key});

  @override
  State<SeeAllRoute> createState() => _SeeAllRouteState();
}

class _SeeAllRouteState extends State<SeeAllRoute> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SeeAll());
  }
}

class SeeAll extends StatefulWidget {
  const SeeAll({Key? key}) : super(key: key);

  @override
  State<SeeAll> createState() => _SeeAllState();
}

class _SeeAllState extends State<SeeAll> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              width: 56,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeRoute()),
                  );
                },
                child: const Icon(Icons.arrow_back),
              ),
            ),
            const Expanded(
              child: Text(
                topDeal,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                    onTap: () {}, child: const Icon(Icons.search))),
            const SizedBox(width: 10),
          ],
        ),
        SizedBox(
          height: 46,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) {
              return buildItemListView(topdeals: text[index]);
            },
            itemCount: text.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              // mainAxisExtent: 100,
            ),
            itemBuilder: (context, index) {
              return SelectCard1(anh: images[index]);
            },
            itemCount: images.length,
            shrinkWrap: true,
          ),
        ),
      ],
    ));
  }
}
