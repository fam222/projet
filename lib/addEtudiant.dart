import 'package:flutter/material.dart';
import 'package:absa/listeEtudiant.dart';
import 'package:http/http.dart' as http;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       routes:{
        '/':(context)=>AddEtudiant(),
        '/listeEtudiant':(context)=>ListeEtudiants()
      },
      initialRoute: '/',
      title:'liste des étudiants',
      theme: ThemeData(
        
        primarySwatch: Colors.brown,
      ),

    );
  }
}

class AddEtudiant extends StatelessWidget  {
    const AddEtudiant({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
        appBar: AppBar(  
          title: Text('Ajouter un étudiant'),  
        ),  
       body: Padding(  
            padding: EdgeInsets.all(15),  
            child: Column(  
              children: <Widget>[  
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Matricule',  
                      hintText: 'Saisissez le matricule',  
                    ),  
                  ),  
                ),
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Nom',  
                      hintText: 'Saisissez votre nom',  
                    ),  
                  ),  
                ),  
                Padding(  
                 padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Prénom',  
                      hintText: 'Saisissez votre prénom',  
                    ),  
                  ),  
                ), 
                  Padding(  
                 padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Nationalité',  
                      hintText: 'Vous etes de quelle nationalité?',  
                    ),  
                  ),  
                ),  
                   Padding(  
                 padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Lieu de naissance',  
                      hintText: 'Vous etes nés ou',  
                    ),  
                  ),  
                ),

                RaisedButton(  
                  textColor: Colors.white,  
                  color: Colors.red,  
                  child: Text('Enregistrer'),  
                  onPressed: (){},  
                ) , 

                 RaisedButton(  
                  textColor: Colors.red,  
                  color: Colors.white,  
                  child: Text('liste des étudiants'),  
                  onPressed: (){ Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>ListeEtudiants()
                                  )
    );},  
                ) 
              ],  
            )  
        )  
    );  
  
  }
}
