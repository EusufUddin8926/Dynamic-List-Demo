import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DynamicListDemo(),
        theme: ThemeData(primarySwatch: Colors.indigo),
        debugShowCheckedModeBanner: false);
  }
}

class DynamicListDemo extends StatelessWidget {
  var listItem = [
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Recycler Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Garbase Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Remove Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    },
    {
      "img":
          "https://media.wired.com/photos/5b8999943667562d3024c321/master/w_2560%2Cc_limit/trash2-01.jpg",
      "title": "Delete Icon"
    }
  ];

  MySnackBarMsg(context, msg) {
   return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
    ));
  }

  DynamicListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DynamicListDemo"),
      ),
      body: ListView.builder(
        itemCount: listItem.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              MySnackBarMsg(context, listItem[index]["title"]);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              child: Image.network(
                listItem[index]["img"]!,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
