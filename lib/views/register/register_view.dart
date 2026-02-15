import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(height: 50),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('first name', style: TextStyle(fontSize: 19)),
                          SizedBox(height: 4),
                          SizedBox(
                            height: 40,
                            width: 150,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text('last name', style: TextStyle(fontSize: 19)),
                          SizedBox(height: 6),
                          SizedBox(
                            height: 40,
                            width: 150,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Text('Age', style: TextStyle(fontSize: 19)),
                      SizedBox(width: 9),
                      SizedBox(
                        height: 40,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Text('gender', style: TextStyle(fontSize: 19)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio<String>(
                            value: 'man',
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value;
                              });
                            },
                          ),
                          Text('man', style: TextStyle(fontSize: 15)),
                          Radio<String>(
                            value: 'women',
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value;
                              });
                            },
                          ),
                          Text('women', style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: [
                      Text('country', style: TextStyle(fontSize: 19)),
                      SizedBox(width: 9),
                      SizedBox(
                        height: 40,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: [
                      Text('email', style: TextStyle(fontSize: 19)),
                      SizedBox(width: 9),
                      SizedBox(
                        height: 40,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 70),
              Align(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
                  onPressed: () {},
                  child: Text('OK'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
