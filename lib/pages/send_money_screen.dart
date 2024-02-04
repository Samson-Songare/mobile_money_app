import 'package:flutter/material.dart';

class SendMoneyScreen extends StatefulWidget {
  @override
  _SendMoneyScreenState createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  TextEditingController receiverNumberController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  List<String> receiverSuggestions = ['0784901461', '0783123456', '0678432567'];
  List<double> amountSuggestions = [10.0, 20.0, 50.0, 90.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Money'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: receiverNumberController,
              decoration: InputDecoration(
                labelText: 'Receiver\'s Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text('Assistant Suggestion:'),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    receiverNumberController.text = receiverSuggestions[0];
                  },
                  child: Text(
                    'Erick',
                    style: TextStyle(color: Colors.grey),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    // You can add more styles here if needed
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    receiverNumberController.text = receiverSuggestions[1];
                  },
                  child: Text(
                    'Samson',
                    style: TextStyle(color: Colors.grey),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    // You can add more styles here if needed
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    receiverNumberController.text = receiverSuggestions[2];
                  },
                  child: Text(
                    'Mia',
                    style: TextStyle(color: Colors.grey),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    // You can add more styles here if needed
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    receiverNumberController.text = receiverSuggestions[1];
                  },
                  child: Text(
                    'Elisha',
                    style: TextStyle(color: Colors.grey),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    // You can add more styles here if needed
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text('Amount Suggestions:'),
            SizedBox(height: 15.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    amountController.text = amountSuggestions[0].toString();
                  },
                  child: Text(
                    amountSuggestions[0].toString(),
                    style: TextStyle(color: Colors.grey),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    // You can add more styles here if needed
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    amountController.text = amountSuggestions[1].toString();
                  },
                  child: Text(
                    amountSuggestions[1].toString(),
                    style: TextStyle(color: Colors.grey),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    // You can add more styles here if needed
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    amountController.text = amountSuggestions[2].toString();
                  },
                  child: Text(
                    amountSuggestions[2].toString(),
                    style: TextStyle(color: Colors.grey),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    // You can add more styles here if needed
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    amountController.text = amountSuggestions[3].toString();
                  },
                  child: Text(
                    amountSuggestions[3].toString(),
                    style: TextStyle(color: Colors.grey),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    // You can add more styles here if needed
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Implement logic to send money
                  // For now, let's print the values
                  print('Receiver\'s Number: ${receiverNumberController.text}');
                  print('Amount: ${amountController.text}');

                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return MoneyInfoBottomSheet(
                        receiverNumber: receiverNumberController.text,
                        amount: amountController.text,
                        receiverNumberController: receiverNumberController,
                        amountController: amountController,
                      );
                    },
                  );
                },
                child: Text('Send Money'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MoneyInfoBottomSheet extends StatelessWidget {
  final String receiverNumber;
  final String amount;

  MoneyInfoBottomSheet({
    required this.receiverNumber,
    required this.amount,
    required this.receiverNumberController,
    required this.amountController,
  });
  TextEditingController receiverNumberController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  bool _accepted = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Money Info',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 8.0),
          Text('Receiver\'s Name: Erick Liko', style: _infoTextStyle),
          SizedBox(height: 8.0),
          Text('Receiver\'s Number: $receiverNumber', style: _infoTextStyle),
          Text('Amount: $amount', style: _infoTextStyle),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Show acceptance ModalBottomSheet
                  receiverNumberController.clear();
                  amountController.clear();
                  Navigator.pop(context);
                  showAcceptanceBottomSheet(context);
                },
                child: Text('Accept'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Return to the form to fill again
                  Navigator.pop(context);
                },
                child: Text('Reject'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void showAcceptanceBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Acceptance Info:'),
              SizedBox(height: 8.0),
              Text('Transaction accepted!'),
            ],
          ),
        );
      },
    );
  }
}

final TextStyle _infoTextStyle = TextStyle(fontSize: 16.0);
final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(
  primary: Colors.transparent,
  onPrimary: Colors.blue,
  elevation: 0,
);
