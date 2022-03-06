// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:learning/screens/data/home_list_data.dart';
import 'package:learning/screens/models/home_list_model.dart';

class HomeScreen extends StatelessWidget {
  final List<HomeList> homeListData = homelist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Flutter Learning'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
                alignment: Alignment.center,
                child: const Text(
                  'Topics',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                )),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              child: ListView.builder(
                  itemCount: homeListData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      tileColor: Colors.grey.shade200,
                      leading: homeListData[index].icon,
                      title: Text(homeListData[index].title),
                      subtitle: Text(homeListData[index].subtitle),
                      onTap: () {
                        Navigator.pushNamed(
                            context, homeListData[index].routeName);
                      },
                    );
                  }),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.menu_book_rounded),
        onPressed: () {},
      ),
    );
  }
}
