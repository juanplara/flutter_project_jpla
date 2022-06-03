import 'package:flutter/material.dart';

void main() => runApp(Counter_screen());

class Counter_screen extends StatefulWidget {
  const Counter_screen({Key? key}) : super(key: key);

  @override
  State<Counter_screen> createState() => _Counter_screenState();
}

class _Counter_screenState extends State<Counter_screen> {
  var count = 0;

  void increase() {
    count++;
    setState(() {});
  }

  void decrease() {
    count--;
    setState(() {});
  }

  void reset() {
    count = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8.0,
        title: const Text(
          'Death Metal',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Color.fromARGB(157, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Possessed",
              style:
                  TextStyle(fontSize: 28, color: Color.fromARGB(255, 81, 1, 1)),
            ),
            Text("$count",
                style: const TextStyle(
                    fontSize: 32, color: Color.fromARGB(255, 181, 0, 0))),
          ],
        ),
      ),
      floatingActionButton: FloatingCustomRow(increase: increase, decrease: decrease, reset: reset,),
    );
  }
}

class FloatingCustomRow extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;
  const FloatingCustomRow({
    Key? key, required this.increase, required this.decrease, required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () => increase(),
            child: const Icon(
              Icons.add_sharp,
              color: Color.fromARGB(255, 124, 0, 0),
            )),
        FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () => decrease(),
            child: const Icon(
              Icons.remove_sharp,
              color: Color.fromARGB(255, 124, 0, 0),
            )),
        FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () => reset(),
            child: const Icon(
              Icons.restart_alt_sharp,
              color: Color.fromARGB(255, 124, 0, 0),
            )),
      ],
    );
  }
}
