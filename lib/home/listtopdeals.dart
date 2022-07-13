import 'package:car_market/dialog.dart';
import 'package:flutter/material.dart';

class Anh {
  Anh(
      {required this.title,
        this.star,
        required this.icon,
        this.condition,
        this.price,
        this.isLike});

  bool? isLike;
  String? star;
  final String title;
  final String icon;
  String? condition;
  String? price;
}

List<Anh> images1 = <Anh>[
  Anh(
      title: 'Mercedes',
      star: '4.5',
      icon: 'assets/images/hinh-anh-xe-o-to-dep.jpg',
      condition: 'New',
      price: '150.000USD',
      isLike: false),
  Anh(
      title: 'Tesla',
      star: '4.5',
      condition: 'New',
      price: '150.000USD',
      icon: 'assets/images/hinh-anh-xe-o-to-dep.jpg',
      isLike: false),
  Anh(
      title: 'BMW',
      star: '4.5',
      condition: 'New',
      price: '150.000USD',
      icon: 'assets/images/hinh-anh-xe-o-to-vinfast.jpg',
      isLike: false),
  Anh(
      title: 'Toyota',
      star: '4.5',
      condition: 'New',
      price: '150.000USD',
      icon: 'assets/images/hinh-anh-xe-oto-mitsubishi-xpander.jpg',
      isLike: false),
  Anh(
      title: 'Volvo',
      star: '4.5',
      price: '150.000USD',
      condition: 'New',
      icon: 'assets/images/hinh-anh-honda-city-2019.jpg',
      isLike: false),
  Anh(
      title: 'Honda',
      star: '4.5',
      price: '150.000USD',
      condition: 'New',
      icon: 'assets/images/hinh-anh-honda-civic-2019-dep.jpg',
      isLike: false),
  Anh(
      title: 'Huyndai',
      star: '4.5',
      condition: 'New',
      price: '150.000USD',
      icon: 'assets/images/hinh-anh-o-to-dep.jpg',
      isLike: false),
  Anh(
      title: 'More',
      icon: 'assets/images/anh-o-to.jpg',
      star: '4.5',
      price: '150.000USD',
      condition: 'New',
      isLike: false),
  Anh(
      title: 'Mercedes',
      star: '4.5',
      icon: 'assets/images/mec.jpg',
      condition: 'New',
      price: '150.000USD',
      isLike: false),
  Anh(
      title: 'BMW',
      star: '4.5',
      icon: 'assets/images/bmwi8.jpg',
      condition: 'New',
      price: '150.000USD',
      isLike: false),
  Anh(
      title: 'VinFast',
      star: '4.5',
      icon: 'assets/images/vinfast.jpg',
      condition: 'New',
      price: '150.000USD',
      isLike: false),
  Anh(
      title: 'VinFast',
      star: '4.5',
      icon: 'assets/images/vinfast2.jpg',
      condition: 'New',
      price: '150.000USD',
      isLike: false),
];

class listTopDeals extends StatefulWidget {
  const listTopDeals({Key? key, required this.anh}) : super(key: key);
  final Anh anh;

  @override
  State<listTopDeals> createState() =>_listTopDealsState();
}

class _listTopDealsState extends State<listTopDeals> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showMaterialDialog(context, widget.anh.title),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  widget.anh.icon,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 20,
                    child: GestureDetector(
                      onTap: () {
                        _setLike();
                      },
                      child: widget.anh.isLike == false
                          ? Image.asset('assets/images/icons8-like-64.png')
                          : Image.asset('assets/images/icons8-love-96.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text(widget.anh.title,style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.star_half),
                  Text(widget.anh.star ?? ''),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius:  BorderRadius.all(Radius.circular(10))
                    ),
                    child: Text(widget.anh.condition ?? ''),
                  )
                  // Card(
                  //
                  //   color: Colors.white54,
                  //   child: Text(widget.anh.condition ?? ''),
                  // )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text(widget.anh.price ?? '')],
              ),
            ],
          )
          // Text(widget.anh.title),
        ]),
      ),
    );
  }

  void _setLike() {
    setState(() {
      widget.anh.isLike = !widget.anh.isLike!;
    });
  }
}