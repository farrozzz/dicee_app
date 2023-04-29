import 'package:flutter/material.dart';

void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
      appBar: AppBar(
        title:  const Text ('Dicee'),
        backgroundColor: Colors.lightGreenAccent,
      ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        children: [
          Expanded
            (child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(image: AssetImage('assets/images/dice1.png'),
          ),
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image(image: AssetImage('assets/images/dice2.png'),
            ),
          ),
          ),
        ],
      ),
    );
  }
}

