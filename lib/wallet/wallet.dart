import 'package:car_market/const/string.dart';
import 'package:car_market/dialog.dart';
import 'package:car_market/home/topdealseeall.dart';
import 'package:car_market/wallet/historywallet.dart';
import 'package:car_market/wallet/seeallwallet.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Wallet());
  }
}

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
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
                  wallet,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
              Container(
                width: 70,
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset('assets/images/icons8-view-more-100.png'),
                ),
              ),
              const SizedBox(
                height: 16,
              )
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 250,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/backgrounds.jpg',
                          fit: BoxFit.fill,
                          width: double.infinity,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text(
                                      name,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('**** **** **** 5124',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16)),
                                  ],
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: 60,
                                  child: Image.asset(
                                      'assets/images/credit-cards-logo-png-visa-debit-card-payment-credit-card-visa-transparent-background-800x450.jpg'),
                                ),
                                SizedBox(
                                  width: 50,
                                  child: Image.asset(
                                      'assets/images/icons8-mastercard-logo-96.png'),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text(
                                      'Your Balance',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('\$200.68',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showMaterialDialog(context, 'hello');
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(17))),
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              3, 0, 3, 0),
                                          width: 30,
                                          child: Image.asset(
                                              'assets/images/icons8-download-100.png'),
                                        ),
                                        const Text(
                                          'Top up',
                                          style: TextStyle(fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                _buildRowSeeAll(transaction, () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SeeAllWalletPage()));
                }),
                _itemMenu(
                    icon: 'assets/images/bmwi8.jpg',
                    title: 'BMW I8',
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-up-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HistoryWalletPage()))),
                _itemMenu(
                    icon: 'assets/images/bmwi8.jpg',
                    title: 'BMW M5 Series',
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-up-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),
                _itemMenu(
                    icon: 'assets/images/icons8-wallet-64.png',
                    title: 'Top up Wallet',
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-down-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),
                _itemMenu(
                    icon: 'assets/images/hinh-anh-xe-o-to-mercedes.jpg',
                    title: 'Ferrari Sports',
                    time: 'hello',
                    price: '\$200.23',
                    icon2: 'assets/images/icons8-page-up-button-100.png',
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeeAllRoute()))),
                _itemMenu(
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

  Widget _buildRowSeeAll(String title, VoidCallback callbackSeeAll) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Column(),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
            onTap: callbackSeeAll,
            child: const Text(
              seeAll,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }

  Widget _itemMenu(
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
                  children: <Widget>[
                    Text(time),
                    Container(
                      padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                      width: 20,
                      child: Image.asset(icon2),
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
