import 'package:flutter/material.dart';
import 'package:absa/addEtudiant.dart';
import 'package:absa/addNote.dart';
import 'package:absa/addClass.dart';
import 'package:absa/listeEtudiant.dart';
import 'package:absa/listeNote.dart';
import 'package:absa/listeClasse.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes:{
        '/':(context)=>Accueil(),
        '/addEtudiant':(context)=>AddEtudiant()
      },
      initialRoute: '/',
      title: 'Gestion Etudiants',
      theme: ThemeData(
        
        primarySwatch: Colors.brown,
      ),
      //home: Accueil,
    );
  }
}

class Accueil extends StatefulWidget {
  const Accueil({ Key? key }) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gestion des étudiants"),
      ),
        body: Center(child: Column(children: <Widget>[  
             Container(
               width: MediaQuery.of(context).size.width * 0.2,
               margin: EdgeInsets.all(25),
              child: FlatButton(  
                padding: EdgeInsets.all(30),
                child: Text('Ajouter un étudiant', style: TextStyle(fontSize: 20.0),),  
                  shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.brown, width: 2),
            ),
                color: Colors.brown,  
                textColor: Colors.white, 
                onPressed: () {  Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => AddEtudiant()
                                  )
                               );},
                    ), 
),
              Container(
              width: MediaQuery.of(context).size.width * 0.2,
               margin: EdgeInsets.all(25),
              child: FlatButton(  
                padding: EdgeInsets.all(30),
                child: Text('Ajouter une classe', style: TextStyle(fontSize: 20.0),), 
                color: Colors.white,  
                textColor: Colors.brown,  
                shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.brown, width: 2),
            ),
                onPressed: () { Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => AddClass()
                                  )
                               );},

            ),  
            ),
              Container(
              width: MediaQuery.of(context).size.width * 0.2,
               margin: EdgeInsets.all(25),  
              child: FlatButton(  
                padding: EdgeInsets.all(30),
                child: Text('Ajouter une note', style: TextStyle(fontSize: 20.0),),  
                color: Colors.brown,  
                textColor: Colors.white, 
                  shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.brown, width: 2),
            ),
                onPressed: () { Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => AddNote()
                                  )
                               );},

             ),  
            ),
            
            ] 
              )), 
    
      drawer: siderbar(),
    );
}

Widget siderbar(){
  return Drawer(
    child: ListView(children: [
      ListTile(
        title: Text('Liste des étudiants'),
        textColor:Colors.brown,
        onTap: () { Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ListeEtudiants()
                                  )
                               );},
      ),
       ListTile(
        title: Text('Liste des classes'),
        onTap: () {Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ListeClasses()
                                  )
                               );},
      ),
        ListTile(
        title: Text('Tableau de notes'),
        textColor:Colors.brown,
        onTap: () { Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ListeNotes()
                                  )
                               );},
        )
    ]),
  );
}
}
