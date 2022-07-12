import 'package:car_market/const/string.dart';
import 'package:car_market/dialog.dart';
import 'package:flutter/material.dart';

class topDeals {
  topDeals({required this.title});

  final String title;
}

List<topDeals> text = <topDeals>[
  topDeals(title: all),
  topDeals(title: bmw),
  topDeals(title: mecsedes),
  topDeals(title: tesla),
  topDeals(title: poscher),
  topDeals(title: vinfast),
  topDeals(title: huyndai),
];

class buildItemListView extends StatefulWidget {
  const buildItemListView({Key? key, required this.topdeals}) : super(key: key);
  final topDeals topdeals;

  @override
  State<buildItemListView> createState() => _buildItemListViewState();
}

class _buildItemListViewState extends State<buildItemListView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showMaterialDialog(context, widget.topdeals.title);
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(17))),
        padding: const EdgeInsets.all(10),
        child: Text(
          widget.topdeals.title,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
