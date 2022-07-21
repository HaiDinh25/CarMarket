import 'package:car_market/const/string.dart';
import 'package:car_market/login/login.dart';
import 'package:car_market/profile/editprofile.dart';
import 'package:car_market/profile/invitefriend.dart';
import 'package:car_market/profile/language.dart';
import 'package:car_market/profile/notification.dart';
import 'package:car_market/profile/payment.dart';
import 'package:car_market/profile/security.dart';
import 'package:flutter/material.dart';

class ProfilesPage extends StatefulWidget {
  const ProfilesPage({super.key});

  @override
  State<ProfilesPage> createState() => _ProfilesPageState();
}

class _ProfilesPageState extends State<ProfilesPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Profiles());
  }
}

class Profiles extends StatefulWidget {
  const Profiles({Key? key}) : super(key: key);

  @override
  State<Profiles> createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {
  bool isSwitched = false;

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
                  profile,
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
          const SizedBox(
            height: 16,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 130,
                  width: 130,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/poscher.jpg',
                          fit: BoxFit.fill,
                          height: 130,
                          width: 130,
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.all(5),
                        child: SizedBox(
                          height: 30,
                          child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                  'assets/images/icons8-write-66.png')),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  child: const Text(phonenumber),
                ),
                const SizedBox(height: 10),
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
                const SizedBox(height: 10),
                _itemMenu(
                    icon: 'assets/images/icons8-person-64.png',
                    title: editprofile,
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfilePage()))),
                _itemMenu(
                    icon: 'assets/images/icons8-address-100.png',
                    title: address,
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfilePage()))),
                _itemMenu(
                    icon: 'assets/images/icons8-bell-100.png',
                    title: notification,
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationPage()))),
                _itemMenu(
                    icon: 'assets/images/icons8-wallet-64.png',
                    title: payment,
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PaymentPage()))),
                _itemMenu(
                    icon: 'assets/images/icons8-security-lock-100.png',
                    title: security,
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecurityPage()))),
                _itemMenu(
                    icon: 'assets/images/icons8-language-100.png',
                    title: language,
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LanguagePage()))),
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(20),
                      width: 70,
                      child: Image.asset('assets/images/icons8-eye-96.png'),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.all(20),
                        child: const Text(
                          darkmode,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                    ),
                  ],
                ),
                _itemMenu(
                    icon: 'assets/images/icons8-lock-100.png',
                    title: privacipolicy,
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfilePage()))),
                _itemMenu(
                    icon: 'assets/images/icons8-high-importance-90.png',
                    title: helpcenter,
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EditProfilePage()))),
                _itemMenu(
                    icon: 'assets/images/icons8-person-64.png',
                    title: invitefriend,
                    callback: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InviteFriendPage()))),
                _itemMenu(
                  icon: 'assets/images/icons8-logout-100.png',
                  title: logout,
                  callback: () => _show(context),
                  // callback: () =>   _showMaterialDialog()
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget _itemMenu(
      {required String icon, required String title, VoidCallback? callback}) {
    return InkWell(
      onTap: callback,
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            width: 70,
            child: Image.asset(icon),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(20),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(
            width: 70,
            padding: const EdgeInsets.all(20),
            child: Image.asset(
              'assets/images/icons8-forward-48.png',
            ),
          ),
        ],
      ),
    );
  }

  void _show(BuildContext ctx) {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        context: ctx,
        builder: (ctx) => Container(
            padding: const EdgeInsets.all(20),
            width: 300,
            height: 250,
            alignment: Alignment.center,
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Logout',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                  Row(children: const <Widget>[
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Divider(thickness: 1)))
                  ]),
                  const Text(
                    'Are you sure you want to Logout',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          width: 150,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              color: Colors.white),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Cancel',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                              ))),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            color: Colors.white),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => const MyApp()),
                                (Route<dynamic> route) => false);
                            // Navigator.of(context)
                            //     .pushNamedAndRemoveUntil(MaterialPageRoute(builder: (context) => MyApp()), (Route<dynamic> route) => false))
                          },
                          child: const Text('Yes,Logout',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
