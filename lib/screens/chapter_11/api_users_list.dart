import 'package:flutter/material.dart';
import 'package:learning/models/user.dart';
import '../../api/fetch_users.dart';

class PeopleList extends StatefulWidget {
  PeopleList({Key? key}) : super(key: key);

  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  late Future<List<User>> futureUsers;

  @override
  void initState() {
    futureUsers = fetchUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('People List from API'),
        ),
        body: FutureBuilder<List<User>>(
          future: futureUsers,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      child: ListTile(
                        tileColor: Colors.blue.shade100,
                        contentPadding: EdgeInsets.all(10),
                        leading: ClipRect(
                          child: Image.network(snapshot.data![index].imageUrl),
                        ),
                        title: Text(snapshot.data![index].name),
                        subtitle: Text(snapshot.data![index].country),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                SizedBox(
                  height: 10,
                ),
                const Text('Fetching data from the server'),
              ],
            ));
          },
        ));
  }
}
