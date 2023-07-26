import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListNames extends StatefulWidget {
  const ListNames({super.key});

  @override
  State<ListNames> createState() => _ListNamesState();
}

class _ListNamesState extends State<ListNames> {
  List<String> names = ['ahmed', 'khaled', 'mosab', 'mona', 'asmaa'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'names : ',
              style: TextStyle(fontSize: 20),
            ),
            ListView.builder(
              itemCount: names.length,
              shrinkWrap: true,
              padding: EdgeInsets.all(12),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    color: index % 2 == 0 ? Colors.amber : Colors.blue,
                    height: 40,
                    width: double.infinity,
                    child: Text(
                      names[index],
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
