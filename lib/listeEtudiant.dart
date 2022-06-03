import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'etudiant.dart';
 
 class ListeEtudiants extends StatelessWidget {

/*late Future<Etudiant> futureEtudiant;

  @override
  void initState() {
    super.initState();
    futureEtudiant = fetchEtudiant();
}
 Future<http.Response> fetchEtudiant() {
  return http.get(Uri.parse('https://jsonplaceholder.typicode.com/etudiants/1'));
 }*/
   /*late Future<Etudiant> futureEtudiant;
   ListeEtudiants(){
     this.futureEtudiant = fetchEtudiant();
     getdata();
   }

    void getdata() async{
  Response response = await get(Uri.parse("http://127.0.0.1:8000/api/etudiant/"));
  List etudiant= jsonDecode(response.body);
  this.etudiants=etudiants;
  print(this.etudiants);
}
  List etudiants=[];
*/
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   title:"gestion étudiants",
    theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Liste des étudiants')),
        
      body: const MyStatelessWidget(),
        /*FutureBuilder<Etudiant>(
  future: futureEtudiant,
  builder: (context, snapshot) {
    if (snapshot.hasData) {
      return Text(snapshot.data!.title);
    } else if (snapshot.hasError) {
      return Text('${snapshot.error}');
    }

    // By default, show a loading spinner.
    return const CircularProgressIndicator();
  },
)*/
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
            'Matricule',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Nom',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Prénom',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
         DataColumn(
          label: Text(
            'Date de naissance',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
         DataColumn(
          label: Text(
            'Lieu de naissance',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
         DataColumn(
          label: Text(
            'Sexe',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
         DataColumn(
          label: Text(
            'Nationalité',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
         DataColumn(
          label: Text(
            'Classe',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
       rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('158958')),
            DataCell(Text('Adama')),
            DataCell(Text('Ndiaye')),
            DataCell(Text('01/01/2001')),
            DataCell(Text('Diamniadio')),
            DataCell(Text("féminin")),
            DataCell(Text('Sénégalaise')),
            DataCell(Text('L1 Informatique')),
          ],
        ),

        DataRow(
          cells: <DataCell>[
            DataCell(Text('458358')),
            DataCell(Text('Mariama')),
            DataCell(Text('Diop')),
            DataCell(Text('14/05/1992')),
            DataCell(Text('Pikine')),
            DataCell(Text("féminin")),
            DataCell(Text('Sénégalaise')),
            DataCell(Text('Doctorat Médecine')),
          ],
        
        ),
      ],
    );
  }
}
