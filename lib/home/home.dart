import 'package:car_market/home/selectcard.dart';
import 'package:car_market/home/selectcard1.dart';
import 'package:flutter/material.dart';

import '../dialog.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Home());
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get decoration => null;
  TextEditingController nameController = TextEditingController();
  PageController controller = PageController();
  final List<Widget> _list = <Widget>[
    Image.asset('assets/images/anhlogin.jpg', fit: BoxFit.fill),
    Image.asset('assets/images/icons8-like-64.png', fit: BoxFit.fill),
    Image.asset('assets/images/oto1.jpg', fit: BoxFit.fill),
    Image.asset('assets/images/oto1.jpg', fit: BoxFit.fill),
    Image.asset('assets/images/icons8-like-64.png', fit: BoxFit.fill),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 50),
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                width: 100,
                child: IconButton(
                  icon: Image.asset('assets/images/icons8-user-100.png'),
                  iconSize: 50,
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const <Widget>[
                    Text('Good Morning'),
                    Text(
                      'Andrew Ainsley',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: IconButton(
                  icon: Image.asset('assets/images/icons8-bell-96.png'),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 40,
                width: 40,
                child: IconButton(
                  icon: Image.asset('assets/images/icons8-like-64.png'),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                hintStyle: const TextStyle(fontStyle: FontStyle.italic),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon:
                    GestureDetector(child: const Icon(Icons.import_export)),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Special Offers',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Column(),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'See all',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 250,
              width: double.infinity,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: controller,
                onPageChanged: (num) {
                  setState(() {});
                },
                children: _list,
              )),
          const SizedBox(height: 20),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 4,
              mainAxisSpacing: 20,
              mainAxisExtent: 80,
            ),
            itemBuilder: (context, index) {
              return SelectCard(choice: choices[index]);
            },
            itemCount: choices.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
          const SizedBox(height: 20),
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Top Deals',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Column(),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'See all',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 120,
            child: Container(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return _buildItemListView(topDeals[index]);
                },
                itemCount: topDeals.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 20,
              mainAxisExtent: 100,
            ),
            itemBuilder: (context, index) {
              return SelectCard1(anh: images[index]);
            },
            itemCount: images.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }

  Widget _buildItemListView(String text) {
    return GestureDetector(
      onTap: () {
        showMaterialDialog(context, text);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  List<String> topDeals = [
    'All',
    'BMV',
    'VINFAST',
    'TOYOTA',
    'HUYNDAI',
    'POSCHER'
  ];
}

