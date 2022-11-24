import 'package:flutter/material.dart';
import 'package:counter_7/budgetmodel.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/main.dart';
import 'dart:convert';
import 'package:counter_7/watchlist.dart';
import 'dart:developer';
import 'package:counter_7/detailwatchlist.dart';
import 'package:counter_7/watchlistmodels.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyShowPage(title: 'Show data'),
    );
  }
}

class MyShowPage extends StatefulWidget {
  const MyShowPage({super.key, required this.title});
  final String title;
  @override
  State<MyShowPage> createState() => _MyShowPage();
}

class _MyShowPage extends State<MyShowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              // Adding clickable menu
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Counter')),
                  );
                },
              ),
              ListTile(
                title: const Text('Add Budget Info'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Budget Data'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyShowPage(title: 'Show data')),
                  );
                },
              ),
              ListTile(
            title: const Text('Watch List'),
            onTap: () {
              // Routing the menu to the form page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyWatchlistPage()),
              );
            },
              ),
            ],
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(7),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                  child: SizedBox(height: 125,
                      child: ListView.separated(
                        itemCount: budgetlist.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              margin: const EdgeInsets.all(5.0),
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(),
                              ),
                              height: 75,
                              child: Column(children: [
                                Align(alignment: Alignment.centerLeft,
                                    child: Text(budgetlist[index].title,
                                        style: TextStyle(
                                            fontSize: 25))),
                                Row(mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          budgetlist[index].amount + '\$',
                                          style: TextStyle(fontSize: 12)),
                                      Text(budgetlist[index].type,
                                          style: TextStyle(fontSize: 12))])
                              ]));
                        },
                        separatorBuilder: (BuildContext context, int index) => const Divider(),
                      )))
            ],
          ),
        ));
  }
}