import 'package:flutter/material.dart';


class Herazo extends StatefulWidget {
  const Herazo({Key? key}) : super(key: key);

  
  @override
  State<Herazo> createState() => _HerazoState();
}

class _HerazoState extends State<Herazo> {

  static const TextStyle optionTitleStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black,);
  static const TextStyle optionBodyStyle = TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white10),
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perfil de usuarios'),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            // Content of my Row

            //Item 1/4
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/jpla.jpg'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.blue,
                            width: 5,
                          ),
                        ),
                        padding: EdgeInsets.only(bottom: 50),
                  
                      ),
                    

            //Item 2/4
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/herazo.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.blue,
                            width: 5,
                          ),
                        ),
                        padding: EdgeInsets.only(bottom: 50),
                  
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Juan Pablo\nLara Angulo",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text("Erick Manuel\nHerazo Jimenez",
                      style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('\nUniversidad:', style: optionTitleStyle),
                        Text('Tec. Autonoma\ndel Pacifico\n', style: optionBodyStyle,),
                        Text('Estudios Realizados:', style: optionTitleStyle,),
                        Text('Tecnologo en informática\n', style: optionBodyStyle,),
                        Text('Experiencia laboral:', style: optionTitleStyle,),
                        Text('Colgate Palmolive', style: optionBodyStyle,),
                      ],
                    ),
                  Column(
                    children: [
                      Text('\nUniversidad:', style: optionTitleStyle),
                      Text('Coorporacion universitaria\nRafael Nuñez\n', style: optionBodyStyle,),
                      Text('Estudios Realizados:', style: optionTitleStyle,),
                      Text('Ingenieria de sistemas\n', style: optionBodyStyle,),
                      Text('Experiencia laboral:', style: optionTitleStyle,),
                      Text('liteyca de colombia', style: optionBodyStyle,),
                    ],
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}