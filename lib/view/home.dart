import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(HomeMain());

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);
  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
        title: const Text('!Bienvenido(a) a mi App'),
        backgroundColor: Colors.black,
      ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Aplicación realizada por',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              SizedBox(height: 300,
                width: 300,
                child: Lottie.asset('assets/animations/flutter.json'),
              ),
              const SizedBox(height: 20),
              const Text('Juan Pablo Lara Angulo',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}