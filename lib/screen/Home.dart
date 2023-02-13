import 'dart:io';

import 'package:contact/screen/ContactList.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('لیست مخاطبین'),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          Directory directory = await getApplicationDocumentsDirectory();
          String path = '${directory.path}/contact.db';
          print('\n\n\n\n\n\n\n\n\n\n $path');
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: [
          InkWell(
            child: Card(
              color: Colors.blue,
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.person_outline),
                    ),

                    SizedBox(width: 40),
                    Text("داکتران"),




                  ],
                ),
              )
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactList(),));
            },
          ),
        ],
      ),
    );
  }
}
