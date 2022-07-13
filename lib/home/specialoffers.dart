import 'package:car_market/const/string.dart';
import 'package:car_market/home/screena.dart';
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
    return SafeArea(
      child: Column(
        children: <Widget>[
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
                      MaterialPageRoute(builder: (context) => const ScreenA()),
                    );
                  },
                  child: Image.asset('assets/images/icons8-left-96.png'),
                ),
              ),
              const Expanded(
                child: Text(
                  special,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 70,
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/images/icons8-view-more-100.png'),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 250,
                    width: double.infinity,
                    child: PageView.builder(
                      itemBuilder: (_, index) {
                        return Image.asset(
                          _list1[index],
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: _list1.length,
                    )),
                const SizedBox(height: 20),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 250,
                    width: double.infinity,
                    child: PageView.builder(
                      itemBuilder: (_, index) {
                        return Image.asset(
                          _list2[index],
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: _list2.length,
                    )),
                const SizedBox(height: 20),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 250,
                    width: double.infinity,
                    child: PageView.builder(
                      itemBuilder: (_, index) {
                        return Image.asset(
                          _list2[index],
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: _list2.length,
                    )),
                const SizedBox(height: 20),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 250,
                    width: double.infinity,
                    child: PageView.builder(
                      itemBuilder: (_, index) {
                        return Image.asset(
                          _list2[index],
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: _list2.length,
                    )),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

List<String> _list1 = [
  "assets/images/anhlogin.jpg",
  'assets/images/icons8-like-64.png',
  'assets/images/oto1.jpg',
  'assets/images/oto1.jpg',
  'assets/images/icons8-like-64.png',
];
List<String> _list2 = [
  "assets/images/anhlogin.jpg",
  'assets/images/icons8-like-64.png',
  'assets/images/oto1.jpg',
  'assets/images/oto1.jpg',
  'assets/images/icons8-like-64.png',
];
