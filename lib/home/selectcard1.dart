import 'package:flutter/material.dart';

import '../dialog.dart';

class Anh {
  const Anh({required this.title, required this.icon});

  final String title;
  final String icon;
}

List<Anh> images = <Anh>[
  const Anh(
      title: 'Mercedes', icon: 'assets/images/hinh-anh-xe-o-to-dep.jpg'),
  const Anh(title: 'Tesla', icon: 'assets/images/hinh-anh-xe-o-to-dep.jpg'),
  const Anh(title: 'BMW', icon: 'assets/images/hinh-anh-xe-o-to-vinfast.jpg'),
  const Anh(
      title: 'Toyota',
      icon: 'assets/images/hinh-anh-xe-oto-mitsubishi-xpander.jpg'),
  const Anh(title: 'Volvo', icon: 'assets/images/hinh-anh-honda-city-2019.jpg'),
  const Anh(
      title: 'Honda', icon: 'assets/images/hinh-anh-honda-civic-2019-dep.jpg'),
  const Anh(title: 'Huyndai', icon: 'assets/images/hinh-anh-o-to-dep.jpg'),
  const Anh(title: 'More', icon: 'assets/images/anh-o-to.jpg'),
];

class SelectCard1 extends StatelessWidget {
  const SelectCard1({Key? key, required this.anh}) : super(key: key);
  final Anh anh;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showMaterialDialog(context, anh.title),
      child: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: <Widget>[
            Expanded(
              child: SizedBox(
                child: Image.asset(
                  anh.icon,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(anh.title),
          ]),
        ),
      ),
    );
  }
}
