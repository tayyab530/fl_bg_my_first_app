import 'package:flutter/material.dart';
import './test.dart';

void main() {
  //Function that runs app
  runApp(
    //Base widget
    MaterialApp(
      debugShowCheckedModeBanner: false,
      //Name property "home"
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          actions: [
            IconButton(
              onPressed: () {
                print("Icon button is pressed");
              },
              icon: Icon(Icons.search,),
            ),
          ],
        ),
        body: MyCustomStatefulWidget(),
      ),
    ),
  );
}

class MyCustomStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyCustomStatefulState();
  }
}

class _MyCustomStatefulState extends State<MyCustomStatefulWidget> {
  //State variable
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("$name Count $count"),
        IconButton(
          onPressed: () {
            setState(
              () {
                count = count + 1;
              },
            );
            print("Count value is $count");
          },
          icon: Icon(Icons.add),
        ),
      ],
    ));
  }
}

//MyCustomWidget Class
class MyCustomWidget extends StatelessWidget {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("My App"));
  }
}
