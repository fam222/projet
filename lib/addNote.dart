import 'package:flutter/material.dart';
import 'package:absa/listeNote.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
        routes:{
        '/':(context)=>AddNote(),
        '/listeNote':(context)=>ListeNotes()
      },
      initialRoute: '/',
      title:'liste note',
     
      theme: ThemeData( 
      primarySwatch: Colors.brown,
      ),

    );
  }
}

class AddNote extends StatelessWidget  {
    const AddNote({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
        appBar: AppBar(  
          title: Text('Ajouter une note'),  
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
                      labelText: 'Note',  
                      hintText: 'Ajouter une note',  
                    ),  
                  ),  
                ),
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Matière',  
                      hintText: 'Ajouter la matière',  
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
                  child: Text('Tableau de note'),  
                  onPressed: (){ Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>ListeNotes()
                                  )
    );},  
                ) 
              ],  
            )  
        )  
    );  
  
  }
}