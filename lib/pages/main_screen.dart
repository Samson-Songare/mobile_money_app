import 'package:flutter/material.dart';
import 'package:mobile_money_app/pages/account_page.dart';
import 'package:mobile_money_app/pages/home_screen.dart';
import 'package:mobile_money_app/pages/past_transaction_page.dart';
import 'package:mobile_money_app/pages/send_money_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> screens = [
    HomeScreen(),
    SendMoneyScreen(),
    PastTransactionsPage(),
    AccountPage(),
    // Add more screens as needed
  ];

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
          print(value);
          setState(() {
            _index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Send Money',
            icon: Icon(Icons.monetization_on),
          ),
          BottomNavigationBarItem(
            label: 'History',
            icon: Icon(Icons.history),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: const Icon(Icons.supervised_user_circle),
          ),
        ],
      ),
    );
  }
}
