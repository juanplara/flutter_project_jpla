import 'package:flutter/material.dart';

void main() => runApp(Counter());

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var count = 10;
    return Scaffold(
      appBar: AppBar(
        elevation: 8.0,
        title: const Text('Death Metal'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Possessed",
              style: TextStyle(fontSize: 28, color: Color.fromARGB(255, 81, 1, 1)),
            ),
            Text("$count", style: const TextStyle(fontSize: 32, color: Color.fromARGB(255, 181, 0, 0))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
          onPressed: () {
            showMessage();
          },
          child: const Icon(Icons.handshake, color: Color.fromARGB(255, 124, 0, 0),)),
    );
  }

  void showMessage() {
    // ignore: avoid_print
    print("object");
  }
}