import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/watchlistmodels.dart';
import 'dart:developer';
import 'package:counter_7/watchlist.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/budgetmodel.dart';
import 'package:counter_7/budgetshow.dart';

class DetailsOfMywatchlist extends StatelessWidget {
  const DetailsOfMywatchlist({super.key, required this.model});

  final Fields model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
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
      body: Column(
        children: [
          // Adding clickable menu
          ListTile(
            leading: Text('${model.title}', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
          ),
          ListTile(
            leading: Text('Release Date :', style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Text(''),
            title: Text("${model.release_date}"),
          ),
          ListTile(
            leading: Text('Rating :', style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Text(''),
            title: Text("${model.rating}"),
          ),
          ListTile(
            leading: Text('Status :', style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Text(''),
            title: Text("${model.watched}"),
          ),
          ListTile(
            leading: Text('Review :', style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Text(''),
            title: Text("${model.review}"),
          ),
        ],
      ),
    );
  }
}