import 'package:flutter/material.dart';
class ContactList extends StatefulWidget {
  const ContactList({Key key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("استادان"),
        centerTitle: true,
      ),
      // body: ListView.builder(
      //   itemCount: myContact.length,
      //   itemBuilder: (context, index) {
      //     return myContact[index];
      //   }
      // ),

      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }

  contactCard(String name, int phone, String des){
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 3),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        tileColor: Colors.blue,
        leading:  Text('0$phone'),
        trailing:  Text(name),
        title: const SizedBox(),
        subtitle: Text(des),
      ),
    );
  }
}
