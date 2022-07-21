import 'package:car_market/const/string.dart';
import 'package:flutter/material.dart';

class InviteFriendPage extends StatefulWidget {
  const InviteFriendPage({super.key});

  @override
  State<InviteFriendPage> createState() => _InviteFriendPageState();
}

class _InviteFriendPageState extends State<InviteFriendPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: InviteFriend());
  }
}

class InviteFriend extends StatefulWidget {
  const InviteFriend({Key? key}) : super(key: key);

  @override
  State<InviteFriend> createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {

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
                  invitefriend,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _itemMenu1(
                  icon: 'assets/images/bmwi8.jpg',
                  title: name,
                  time: phonenumber,
                ),
                _itemMenu1(
                  icon: 'assets/images/bmwi8.jpg',
                  title: name,
                  time: phonenumber,
                ),
                _itemMenu1(
                  icon: 'assets/images/bmwi8.jpg',
                  title: name,
                  time: phonenumber,
                ),
                _itemMenu1(
                  icon: 'assets/images/bmwi8.jpg',
                  title: name,
                  time: phonenumber,
                ),
                _itemMenu1(
                  icon: 'assets/images/bmwi8.jpg',
                  title: name,
                  time: phonenumber,
                ),
                _itemMenu1(
                  icon: 'assets/images/bmwi8.jpg',
                  title: name,
                  time: phonenumber,
                ),
                _itemMenu1(
                  icon: 'assets/images/bmwi8.jpg',
                  title: name,
                  time: phonenumber,
                ),
                _itemMenu1(
                  icon: 'assets/images/bmwi8.jpg',
                  title: name,
                  time: phonenumber,
                ),
                _itemMenu1(
                  icon: 'assets/images/bmwi8.jpg',
                  title: name,
                  time: phonenumber,
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _itemMenu1(
      {required String icon, required String title, required String time}) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Container(
              height: 70,
              width: 70,
              padding: const EdgeInsets.all(0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  icon,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
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
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Colors.black),
              child: const Text(
                'Invite',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
