import 'package:flutter/material.dart';

class Post1 extends StatelessWidget {
  const Post1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.red,
                  Colors.blue,
                ],
              ),
            ),
            child: Center(
              child: Container(
                width: 90,
                height: 50,
                color: Colors.white,
                child: Icon(Icons.add),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
