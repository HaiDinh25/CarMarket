import 'package:car_market/const/string.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Language());
  }
}

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  List<Menu> menuList = [];

  @override
  void initState() {
    menuList.add(Menu(index: 0, title: 'English(US)', isSelected: true));
    menuList.add(Menu(index: 1, title: 'English(UK)', isSelected: false));
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
                    Navigator.pop(context);
                  },
                  child: Image.asset('assets/images/icons8-left-96.png'),
                ),
              ),
              const Expanded(
                child: Text(
                  language,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: const Text('Suggested',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                ListView.builder(
                  itemBuilder: (_, index) {
                    return _itemMenu(menu: menuList[index], index: index);
                  },
                  itemCount: menuList.length,
                  shrinkWrap: true,
                ),
                Row(
                  children: const <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: const Text('Language',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget _itemMenu({Menu? menu, int? index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          for (int i = 0; i < menuList.length; i++) {
            if (index == i) {
              menuList[index ?? 0].isSelected = true;
            } else {
              menuList[i].isSelected = false;
            }
          }
          //set event
        });
      },
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(20),
              child: Text(
                menu!.title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            alignment: Alignment.center,
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              border: Border.all(
                  color: menu.isSelected == true ? Colors.black : Colors.black,
                  width: 2),
              shape: BoxShape.circle,
            ),
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    menu.isSelected == true ? Colors.black : Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Menu {
  int index;
  String title;
  bool isSelected;

  Menu({required this.index, required this.title, required this.isSelected});
}
