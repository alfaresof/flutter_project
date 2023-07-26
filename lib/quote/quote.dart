import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_project/quote/quote_model.dart';
import 'package:flutter_project/quote/text.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(author: 'ahmed', quote: 'say somthing'),
    Quote(author: 'mohamed', quote: 'say somthing'),
    Quote(author: 'khaled', quote: 'say somthing'),
    Quote(author: 'etc', quote: 'say somthing'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Column(
          children: [
            Text(
              'quotes :',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: quotes.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    height: 150,
                    padding: EdgeInsets.all(12),
                    color: Colors.black87,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        getWhiteText(text: "\" ${quotes[index].quote} \""),
                        getWhiteText(text: " - ${quotes[index].author} "),
                        ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {
                            setState(() {
                              quotes.removeAt(index);
                            });
                          },
                          child: Text(
                            'remove',
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        )),
      ),
    );
  }
}
