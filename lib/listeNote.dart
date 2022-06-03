import 'dart:convert';
import 'package:flutter/material.dart';

 class ListeNotes extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
   title:"gestion étudiants",
   theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Tableau de notes')),
      body: const MyStatelessWidget(),
      ),
    //home: const ListeEtudiants(),
    );
  }
}
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Note',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
         DataColumn(
          label: Text(
            'Matière',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        ],
       rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('10')),
            DataCell(Text('IOT')),
            ],
        
        ),
      ],
    );
  }
}
