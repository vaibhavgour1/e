import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List _items = [];
  List _childrens = [];
  List _childrenss = [];
  List<dynamic> _itemss = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('lib/data.json');
    final data = await json.decode(response);

    setState(() {
      _items = data["jsonString"];
      log("${data["jsonString"]}");
      log("===>${_items}");

      // _itemss = data["jsonString"]["Children"];
    });
    _items[0]["Children"].forEach((element) {
      log("====>e${element}");
      _childrens.add(element);
    });

    log("====>_childrens${_childrens}");
    log("====>_childrens${_childrens.length}");
    for (int i = 0; i <= _childrens.length - 1; i++) {
      _childrens[i]["Children"].forEach((element) {
        log("====>element${element}");
        _childrenss.add(element);
      });
    }
    log("====>_childrenss${_childrenss}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Load Data'),
              onPressed: readJson,
            ),

            // Display the data loaded from sample.json
            _items.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: _itemss.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.all(10),
                          child: ListTile(
                            title: Text(
                              _itemss[index]["Children"],
                              // style: TextStyle(
                              //     color: double.parse(_items[index]["PackageAmount"].toString()) > 0 &&
                              //             double.parse(_items[index]["TotalExpectedIncome"].toString()) <
                              //                 double.parse(_items[index]["TotalExpectedIncome"].toString())
                              //         ? Colors.red
                              //         : Colors.black)
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
