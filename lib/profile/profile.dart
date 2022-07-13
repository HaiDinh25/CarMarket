import 'package:flutter/material.dart';

class Profiles extends StatefulWidget {
  const Profiles({Key? key}) : super(key: key);

  @override
  State<Profiles> createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
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
                onTap: () {},
                child: Image.asset('assets/images/icons8-sedan-100.png'),
              ),
            ),
            const Expanded(
              child: Text(
                'Proflie',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/images/poscher.jpg',fit: BoxFit.fill,height: 120,width: 120,),
                ),
              ],
            )
          ],
        )
      ],
    ));
  }
}
