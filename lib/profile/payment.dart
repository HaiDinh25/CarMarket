import 'package:car_market/const/string.dart';
import 'package:car_market/profile/profile.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Payment());
  }
}

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                  payment,
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
              const SizedBox(
                height: 16,
              )
            ],
          ),
          Expanded(
              child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(20),
                child: _itemMenu(
                  icon: 'assets/images/icons8-paypal-96.png',
                  title: 'PayPal',
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: _itemMenu(
                  icon: 'assets/images/icons8-google-96.png',
                  title: 'Google Pay',
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: _itemMenu(
                  icon: 'assets/images/icons8-apple-logo-60.png',
                  title: 'Apple Pay',
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: _itemMenu(
                  icon: 'assets/images/icons8-mastercard-logo-96.png',
                  title: '**** **** **** 4468',
                ),
              ),
            ],
          )),
          Container(
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              style: ButtonStyle(
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.black),
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
              child: const Text('Add New Card', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemMenu({required String icon, required String title}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            width: 68,
            child: Image.asset(icon),
          ),
          Expanded(
            child: Container(
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(

              child: const Text(
                'Connected',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              )),
        ],
      ),
    );
  }
}
