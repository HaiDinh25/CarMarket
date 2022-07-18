import 'package:flutter/material.dart';

class HistoryWalletPage extends StatefulWidget {
  const HistoryWalletPage({super.key});

  @override
  State<HistoryWalletPage> createState() => _HistoryWalletPageState();
}

class _HistoryWalletPageState extends State<HistoryWalletPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HistoryWallet());
  }
}

class HistoryWallet extends StatefulWidget {
  const HistoryWallet({Key? key}) : super(key: key);

  @override
  State<HistoryWallet> createState() => _HistoryWalletState();
}

class _HistoryWalletState extends State<HistoryWallet> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text('Hello'),
    );
  }
}