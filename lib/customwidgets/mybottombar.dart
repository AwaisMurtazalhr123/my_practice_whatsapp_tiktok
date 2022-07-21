import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              Icon(Icons.home),
              Text('Home'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.home),
              Text('Home'),
            ],
          ),
          Container(
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
        ],
      ),
    );
  }
}
