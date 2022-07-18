import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  int _index=0;

  void _showQuote(){
    setState(() {
      _index+=1;
    });
  }

  List quotes=[
    "All changes starts from you",
    "Be your own team",
    "Nothing is impossible",
    "Show the world that you are a winner",
    "Before that believe that you are a winner",
    "Knowledge is limited, imagination encircles the world",
    "your time is limited, don't live someone else's life",
    "Dream on because its free"
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      body: Container(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: 350,
              height: 200,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.tealAccent,
                borderRadius: BorderRadius.circular(10.0)
              ),

              child: Center(child: Text(quotes[_index % quotes.length]))
          ),

          Divider(thickness: 2.3,),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: TextButton.icon(
                onPressed: _showQuote,
                icon: Icon(Icons.wb_sunny_outlined),
                label: Text("Inspire me!",
                style: TextStyle(
              fontSize: 16.0,
              color: Colors.tealAccent
            )
                )
            ),
          ),
        ]
      )

    )
    ));
  }
}
