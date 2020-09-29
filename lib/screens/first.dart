import 'package:flutter/material.dart';
import 'package:testTrueFalse/logic/question_generator.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {

  int _questionIndex = 0;
  List<QuestionData> question = [];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Вопросы'),
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
              SizedBox(height: 20),
              Container(
                child: Center(
                  child: Text('0/10',
                      style: Theme.of(context).textTheme.headline2),
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 150),
                  child: Text(
                      'h',
                      style: Theme.of(context).textTheme.headline2),
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: Center(
                  child: Text('7',
                    style: Theme.of(context).textTheme.headline2),
                  ),
                ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    child: RaisedButton(
                      color: Colors.green,
                      onPressed: () => setState(() => _questionIndex++),
                      child: Text('true',
                          style: Theme.of(context).textTheme.headline2),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: RaisedButton(
                      color: Colors.red,
                      onPressed: () => setState(() => _questionIndex++),
                      child: Text('false',
                          style: Theme.of(context).textTheme.headline2),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

