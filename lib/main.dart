import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
          ),
        ),
        body: MagicBall(),
      ),
    );
  }
}
class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ChangeImage = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(onPressed: (){}, child: Expanded(
        child: Image.asset('images/ball$ChangeImage.png'),
      )
      ),
    );
  }
}
