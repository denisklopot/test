import 'package:flutter/material.dart';
import 'package:testTrueFalse/screens/first.dart';
import 'package:testTrueFalse/screens/second.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WelcomeScreenState();
  }
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вопросник'),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: Colors.amber[500],
            image: DecorationImage(
              image: AssetImage('assets/images/1.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // decoration: BoxDecoration(
                //   boxShadow: [BoxShadow(
                //     color: Colors.black,
                //     blurRadius: 10.0,
                //     offset: Offset(1.0, 1.0),
                //   ),
                //   ],
                //   borderRadius: BorderRadius.circular(30.0),
                // ),
                child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FirstScreen()));
                    },
                    child: Text('Начать игру',
                        style: Theme.of(context).textTheme.headline2)),
              ),
              SizedBox(height: 30),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SecondScreen()));

                  },
                  child: Text('Мои достижения',
                      style: Theme.of(context).textTheme.headline2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
