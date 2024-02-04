import 'package:flutter/material.dart';
import 'package:mobile_money_app/components/custom_card.dart';
import 'package:mobile_money_app/pages/chat_page.dart';
import 'package:mobile_money_app/pages/send_money_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _amountText = "TZS 234,590.OO";
  bool _isAmountVisible = false;
  void toggleTextVisibility() {
    setState(() {
      _isAmountVisible = !_isAmountVisible;
      _amountText = _isAmountVisible ? "TZS 234,590.OO" : "TZS ********";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  _amountText,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: toggleTextVisibility,
                  child:
                      Text(_isAmountVisible ? 'Hide Balance' : 'Show Balance'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.star,
                color: Colors.black,
                size: 30.0,
              ),
              SizedBox(width: 8.0),
              Text(
                'Assistant Suggestions',
                style: TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            height: 150.0, // Set the height as needed
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCard(
                      title: "Internet bundle",
                      gbSize: "1 GB",
                      amount: "TZS 25,000/="),
                  const SizedBox(width: 15),
                  CustomCard(
                      title: "Internet bundle",
                      gbSize: "1 GB",
                      amount: "TZS 25,000/="),
                  const SizedBox(width: 15),

                  CustomCard(
                      title: "Internet bundle",
                      gbSize: "1 GB",
                      amount: "TZS 25,000/="),
                  const SizedBox(width: 15),

                  CustomCard(
                      title: "Internet bundle",
                      gbSize: "1 GB",
                      amount: "TZS 25,000/="),

                  // Add more items as needed
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SendMoneyScreen()),
                    );
                  },
                  child: const Column(
                    children: [
                      Icon(Icons.money, size: 50.0),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Send"),
                      Text("Money "),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                const Column(
                  children: [
                    Icon(Icons.support_agent, size: 50.0),
                    SizedBox(height: 5),
                    Text("Agent "),
                    Text("Withdraw"),
                  ],
                ),
                const SizedBox(width: 20),
                const Column(
                  children: [
                    Icon(Icons.food_bank, size: 50.0),
                    SizedBox(height: 5),
                    Text("Bank"),
                    Text("Transfer "),
                  ],
                ),
                const SizedBox(width: 20),
                const Column(
                  children: [
                    Icon(Icons.report, size: 50.0),
                    SizedBox(height: 5),
                    Text("My "),
                    Text("Statement "),
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Service promos',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Service promos',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement the action when the chat button is pressed
          print('Chat button pressed!');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChatPage()),
          );
        },
        child: const Icon(Icons.chat),
      ),
    );
  }
}
