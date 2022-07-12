import 'package:car_market/const/string.dart';
import 'package:car_market/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = '';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text(_title),
        // ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isHidden = true;
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Image.asset('assets/images/login2.png'),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: const Text(
              loginto,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  hintText: hintemail,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: _isHidden,
              controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                hintText: hintpassword,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isHidden = !_isHidden;
                    });
                  },
                  child: Icon(
                    _isHidden ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: _value,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
                activeColor: Colors.black,
              ),
              const Text(rememberme)
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                  MaterialPageRoute(builder: (context) => const HomeRoute()),
                );
              },
              child: const Text(singin),
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  forgotpassword,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: const <Widget>[
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              Text(
                orcontinue,
                style: TextStyle(fontWeight: FontWeight.w100),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: IconButton(
                  icon: Image.asset('assets/images/icons8-facebook-96.png'),
                  iconSize: 50,
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: Image.asset('assets/images/icons8-google-96.png'),
                  iconSize: 50,
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: IconButton(
                  icon: Image.asset('assets/images/icons8-apple-logo-60.png'),
                  iconSize: 50,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: haveanaccount,
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                        text: singup,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
