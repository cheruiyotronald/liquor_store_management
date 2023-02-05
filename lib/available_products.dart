import 'package:flutter/material.dart';


class AvailableProducts extends StatefulWidget {
  @override
  State<AvailableProducts> createState() => _AvailableProducts();
}

class _AvailableProducts extends State<AvailableProducts> {

  final List <String> listof = ['Soft Drinks', 'Alcoholic drinks', 'Water', 'Cocktails', 'Sisha', 'Beer', 'Cigarettes','Food', 'non-sugar'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Available Products',
          style: TextStyle(fontSize: 19.0),
        ),
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => debugPrint('Add')
            ),     
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => debugPrint('search'))
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (_,int index)=>listDataItem(this.listof[index]),
          itemCount: this.listof.length,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: ()=> debugPrint('FB Button Click'),
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        ),


    );
  }
}

class listDataItem extends StatelessWidget {

  late String itemName;
  listDataItem(this.itemName);

  @override
  Widget build(BuildContext context) {
    return Card(

      elevation: 7.0,


      child: Container(

        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(9.0),


        child: Row(
          children: <Widget>[
            CircleAvatar(
              child: Text(itemName[0]),
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
            ),
            Padding(padding: EdgeInsets.all(18.0)),
            Text(
              itemName,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
