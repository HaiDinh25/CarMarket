import 'package:car_market/const/string.dart';
import 'package:car_market/profile/profile.dart';
import 'package:flutter/material.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Security());
  }
}

class Security extends StatefulWidget {
  const Security({Key? key}) : super(key: key);

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  bool isSwitched = false;
  List<Menu> menuList = [];

  @override
  void initState() {
    menuList.add(Menu(index: 0, title: 'Remember me', isSelected: true));
    menuList.add(Menu(index: 1, title: 'Face ID', isSelected: false));
    menuList.add(Menu(index: 2, title: 'Biometric ID', isSelected: false));
    super.initState();
  }

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
                      MaterialPageRoute(
                          builder: (context) => const ProfilesPage()),
                    );
                  },
                  child: Image.asset('assets/images/icons8-left-96.png'),
                ),
              ),
              const Expanded(
                child: Text(
                  security,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    return _itemMenu(menu: menuList[index]);
                  },
                  itemCount: menuList.length,
                  shrinkWrap: true,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Goooooo',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      width: 70,
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Image.asset(
                        'assets/images/icons8-forward-48.png',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfilesPage()),
                    );
                  },
                  child: const Text('Change Pin', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfilesPage()),
                    );
                  },
                  child: const Text('Change Password', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _itemMenu({Menu? menu}) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(20),
            child: Text(
              menu!.title ?? '',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Switch(
          value: menu.isSelected,
          onChanged: (value) {
            setState(() {
              menu.isSelected = value;
            });
          },
        )
      ],
    );
  }
}

class Menu {
  int index;
  String title;
  bool isSelected;

  Menu({required this.index, required this.title, required this.isSelected});
}
