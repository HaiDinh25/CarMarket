import 'package:car_market/home/home.dart';
import 'package:flutter/material.dart';

class SeeAllRoute extends StatelessWidget {
  const SeeAllRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: const SeeAll());
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
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 50,
          ),
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                width: 50,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeRoute()),
                    );
                  },
                  child: const Icon(Icons.arrow_back),
                ),
              ),
              const Expanded(
                child: Text(
                  'Top Deals',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
}
