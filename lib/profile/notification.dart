import 'package:car_market/const/string.dart';
import 'package:car_market/profile/profile.dart';
import 'package:flutter/material.dart';


class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Notification());
  }
}

class Notification extends StatefulWidget {
  const Notification({Key? key}) : super(key: key);

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  bool isSwitched = false;
  List<Menu> menuList = [];

  @override
  void initState() {
    menuList.add(Menu(index: 0, title: 'General Notification', isSelected: false));
    menuList.add(Menu(index: 1, title: 'Sound', isSelected: false));
    menuList.add(Menu(index: 2, title: 'Vibrate', isSelected: false));
    menuList.add(Menu(index: 3, title: 'Special Offers', isSelected: false));
    menuList.add(Menu(index: 4, title: 'Promo \& Discount', isSelected: false));
    menuList.add(Menu(index: 5, title: 'Payment', isSelected: false));
    menuList.add(Menu(index: 6, title: 'Cashback', isSelected: false));
    menuList.add(Menu(index: 7, title: 'App Updates', isSelected: false));
    menuList.add(Menu(index: 8, title: 'New Service Available', isSelected: false));
    menuList.add(Menu(index: 9, title: 'New Tips Available', isSelected: false));
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
                  notification,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ListView.builder(
                  itemBuilder: (_, index) {
                    return _itemMenu(menu: menuList[index]);
                  },
                  itemCount: menuList.length,
                  shrinkWrap: true,
                )
              ],
            ),
          ))
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
