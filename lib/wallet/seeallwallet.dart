import 'package:car_market/const/string.dart';
import 'package:car_market/home/topdealseeall.dart';
import 'package:car_market/wallet/wallet.dart';
import 'package:flutter/material.dart';

class SeeAllWalletPage extends StatefulWidget {
  const SeeAllWalletPage({super.key});

  @override
  State<SeeAllWalletPage> createState() => _SeeAllWalletPageState();
}

class _SeeAllWalletPageState extends State<SeeAllWalletPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SeeAllWallet());
  }
}

class SeeAllWallet extends StatefulWidget {
  const SeeAllWallet({Key? key}) : super(key: key);

  @override
  State<SeeAllWallet> createState() => _SeeAllWalletState();
}

class _SeeAllWalletState extends State<SeeAllWallet> {
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
                  transaction,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 70,
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/images/icons8-search-64.png'),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),
                _itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),
                _itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),_itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),
                _itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),
                _itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),
                _itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),
                _itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),
                _itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),_itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),
                _itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),_itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),
                _itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),
                _itemMenu1(
                    icon: 'assets/images/bmwi8.jpg',
                    title: logout,
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),




              ],
            ),
          ))

        ],
      ),
    );
  }
  Widget _itemMenu1(
      {required String icon,
        required String title,
        required String time,
        required String price,
        required String icon2,
        VoidCallback? callback}) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  icon,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(time)
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(time),
                    Container(
                      padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                      width: 20,
                      child:
                      Image.asset(icon2),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
