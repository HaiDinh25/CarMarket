import 'package:flutter/material.dart';

import '../dialog.dart';

class Choice {
  const Choice({required this.title, required this.icon});

  final String title;
  final String icon;
}

List<Choice> choices = <Choice>[
  const Choice(
      title: 'Mercedes', icon: 'assets/images/icons8-mercedes-benz-100.png'),
  const Choice(title: 'Tesla', icon: 'assets/images/icons8-tesla-96.png'),
  const Choice(title: 'BMW', icon: 'assets/images/icons8-bmw-100.png'),
  const Choice(
      title: 'Toyota',
      icon:
          'assets/images/icons8-toyota-motor-corporation-is-a-japanese-multinational-automotive-manufacturer-96.png'),
  const Choice(title: 'Volvo', icon: 'assets/images/icons8-volvo-100.png'),
  const Choice(title: 'Honda', icon: 'assets/images/icons8-honda-100.png'),
  const Choice(
      title: 'Huyndai',
      icon:
          'assets/images/icons8-hyundai-group-is-a-south-korean-business-conglomerate-96.png'),
  const Choice(title: 'More', icon: 'assets/images/icons8-view-more-100.png'),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showMaterialDialog(context, choice.title),
      child: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade100,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100))),
                    child: Image.asset(
                      choice.icon,
                    )),
              ),
              Text(choice.title),
            ]),
      ),
    );
  }
}
