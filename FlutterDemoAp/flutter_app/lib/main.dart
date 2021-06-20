import 'package:flutter/material.dart';

void main() => runApp(ToturialHome());

class ToturialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Staless",
      home : Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: "Navigation Menu",
            onPressed: null),
        title: Center( child: Text("Flutter app")),
        actions: <Widget>[
          IconButton(
              onPressed: null, icon: Icon(Icons.search), tooltip: "Search")
        ],
      ),
      body: Center(child: RommDemo()),
    )
    );
  }
}

class RommDemo extends StatefulWidget {
  @override
    Randomm createState() => new Randomm();
}

class Randomm extends State<RommDemo> {
  final _wordString = <String>["hiep","taio","hieu"];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _wordString.length,
      itemBuilder: (context, index) {
          // if (index >= _wordString.length) {
          //   _wordString.addAll(iterable)
          // }
        return _buildRow(_wordString[index]);

      },
    );
  }
  Widget _buildRow(String wordList) {
    return ListTile(
      leading: Icon(Icons.star),
      title: Text(
        wordList.toString(),
        style: const TextStyle(fontSize: 18.0)
      ),
      trailing: new Icon(Icons.favorite),
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Sending Message"),
        ));
      },
    );
  }
}

