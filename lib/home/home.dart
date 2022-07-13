import 'package:car_market/const/string.dart';
import 'package:car_market/home/itemlistview.dart';
import 'package:car_market/home/selectcard.dart';
import 'package:car_market/home/selectcard1.dart';
import 'package:car_market/home/specialoffers.dart';
import 'package:car_market/home/topdealseeall.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get decoration => null;
  TextEditingController nameController = TextEditingController();
  PageController controller = PageController();
  final List<String> _list = [
    "assets/images/anhlogin.jpg",
    'assets/images/icons8-like-64.png',
    'assets/images/oto1.jpg',
    'assets/images/oto1.jpg',
    'assets/images/icons8-like-64.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
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
                    Text(goodmorning),
                    Text(
                      name,
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
                hintText: search,
                hintStyle: const TextStyle(fontStyle: FontStyle.italic),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: GestureDetector(
                    child: const Icon(Icons.import_export)),
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _buildRowSeeAll(special, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SpecialRoute()),
                  );
                }),
                // Row(
                //   children: <Widget>[
                //     Container(
                //       padding: const EdgeInsets.all(20),
                //       child: const Text(
                //         'Special Offers',
                //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //       ),
                //     ),
                //     Expanded(
                //       child: Column(),
                //     ),
                //     Container(
                //       padding: const EdgeInsets.all(20),
                //       child: GestureDetector(
                //         onTap: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => const SpecialRoute()),
                //           );
                //         },
                //         child: const Text(
                //           seeAll,
                //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                //         ),
                //       ),
                //       // child: const Text(
                //       //   'See all',
                //       //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //       // ),
                //     ),
                //   ],
                // ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 250,
                    width: double.infinity,
                    child: PageView.builder(
                      itemBuilder: (_, index) {
                        return Image.asset(
                          _list[index],
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: _list.length,
                    )),
                const SizedBox(height: 20),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 5,
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
                // Row(
                //   children: <Widget>[
                //     Container(
                //       padding: const EdgeInsets.all(20),
                //       child: const Text(
                //         'Top Deals',
                //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //       ),
                //     ),
                //     Expanded(
                //       child: Column(),
                //     ),
                //     Container(
                //       padding: const EdgeInsets.all(20),
                //       child: GestureDetector(
                //         onTap: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) => const SeeAllRoute()),
                //           );
                //         },
                //         child: const Text(
                //           seeAll,
                //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                //         ),
                //       ),
                //       // child: const Text(
                //       //   'See all',
                //       //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //       // ),
                //     ),
                //   ],
                // ),
                _buildRowSeeAll(topDeal, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SeeAllRoute()),
                  );
                }),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: 46,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return buildItemListView(topdeals: text[index]);
                      },
                      itemCount: text.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                GridView.builder(
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
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildRowSeeAll(String title, VoidCallback callbackSeeAll) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Column(),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
            onTap: callbackSeeAll,
            child: const Text(
              seeAll,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
