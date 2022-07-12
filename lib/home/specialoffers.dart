import 'package:car_market/const/string.dart';
import 'package:car_market/home/home.dart';
import 'package:flutter/material.dart';

class SpecialRoute extends StatelessWidget {
  const SpecialRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Special());
  }
}

class Special extends StatefulWidget {
  const Special({Key? key}) : super(key: key);

  @override
  State<Special> createState() => _SpecialState();
}

class _SpecialState extends State<Special> {
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
                width: 70,
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
                  special,
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
        ],
      ),
    );
  }
}
