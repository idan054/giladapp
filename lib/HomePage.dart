import 'package:flutter/material.dart';
import 'my_widgets.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isClicked = false;
  double py = 3.14;
  int clock = 1;
  String cardName = 'Bob';

  void myAdd() {
    setState(() {
      clock++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.center,
          child: Text("אין דבר כזה תחתוני מזל",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.black)),
        ),
      ),
      // e: Drawer()
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            myCard(
                cardColor: clock < 10 ? Colors.purple : Colors.amber,
                koteret: clock < 10 ? '$clock' : 'More than 10: $clock'),
            clock < 10 ? myCard(cardColor: Colors.green, koteret: '2')
            : myCard(cardColor: Colors.yellow, koteret: '2'),
            myCard(cardColor: Colors.blue, koteret: '3'),
            myCard(cardColor: Colors.pink, koteret: '4'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myAdd();

          print(clock);
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
