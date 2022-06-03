import 'dart:convert';
import 'package:flutter/material.dart';

 class ListeClasses extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
   title:"gestion étudiants",
    theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Liste des classes')),      
      body: const MyStatelessWidget(),
      ),
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
            'libelle',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        ],
       rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Master1')),
           ], 
        
        ),
      ],
    );
  }
}

