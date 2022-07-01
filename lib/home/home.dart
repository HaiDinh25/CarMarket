import 'package:flutter/material.dart';

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
              Container(
                height: 40,
                width: 40,
                child: IconButton(
                  icon: Image.asset('assets/images/icons8-bell-96.png'),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 10),
              Container(
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
            child: PageView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  child: Image.asset(
                    'assets/images/oto1.jpg',
                    fit: BoxFit.fill,
                  ),
                );
              },
            ),
          ),
          const SizedBox(width: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: Column(children: <Widget>[
                Image.asset('assets/images/icons8-slider-24.png',fit: BoxFit.fill,height: 200,)
              ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
