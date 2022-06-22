import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static const TextStyle optionStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);
  static const TextStyle optionTitleStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black,);
  static const TextStyle optionBodyStyle = TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de usuario'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          header(),
          row_country(optionStyle: optionStyle),
          body_profile(optionTitleStyle: optionTitleStyle, optionBodyStyle: optionBodyStyle),
        ],
      ),
    );
  }
}

class body_profile extends StatelessWidget {
  const body_profile({
    Key? key,
    required this.optionTitleStyle,
    required this.optionBodyStyle,
  }) : super(key: key);

  final TextStyle optionTitleStyle;
  final TextStyle optionBodyStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children:[
              Text('Universidad:', style: optionTitleStyle),
              Text('Tecnologia Autonoma del Pacifico\n', style: optionBodyStyle,),
              Text('Estudios Realizados:', style: optionTitleStyle,),
              Text('Técnico en sistemas', style: optionBodyStyle,),
              Text('Tecnologo en informática\n', style: optionBodyStyle,),
              Text('Experiencia laboral:', style: optionTitleStyle,),
              Text('Colgate Palmolive: Desarrollador web', style: optionBodyStyle,),
              Text('Spataro Napoli: Técnico en sistemas', style: optionBodyStyle,),
              Text('LSV-Tech: Desarrollador en formación', style: optionBodyStyle,),
            ],
          ),
        ],
      ),
    );
  }
}

class row_country extends StatelessWidget {
  const row_country({
    Key? key,
    required this.optionStyle,
  }) : super(key: key);

  final TextStyle optionStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(249, 14, 30, 60),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text('País: Colombia',style: optionStyle,)
            ],
          ),
          Column(
            children: [
              Text('Ciudad: Bogotá',style: optionStyle)
            ],
          )
        ],
      ),
    );
  }
}

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/header-background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 150,
            width: 150,
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
            padding: EdgeInsets.only(bottom: 5),
          ),
          Text("Juan Pablo Lara Angulo",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
          ),
        ],
      ),
    );
  }
}