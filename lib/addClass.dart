import 'package:flutter/material.dart';
import 'package:absa/listeClasse.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       routes:{   
      '/listeClasse':(context)=>ListeClasses()
      },
      initialRoute: '/',
      title:'liste classe',
      theme: ThemeData( 
      primarySwatch: Colors.brown,
      ),

    );
  }
}
class AddClass extends StatelessWidget  {
    const AddClass({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
        appBar: AppBar(  
          title: Text('Ajouter une classe'),  
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
                      labelText: 'Libelle',  
                      hintText: 'Ajouter le contenu',  
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
                  child: Text('Liste des classes'),  
                  onPressed: (){ Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>ListeClasses()
                                  )
    );},  
                ) 
              ],  
            )  
        )  
    );  
  
  }
}