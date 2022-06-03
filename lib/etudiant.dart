import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Etudiant{
  final int id;
  final String nom;
  final String prenom;
  final String datenaiss;
  final String lieu;
  final String sexe;
  final String nationalite;

const Etudiant(
   {
    required this.id,
    required this.nom, 
    required this.prenom, 
    required this.datenaiss, 
    required this.lieu, 
    required this.sexe,
    required this.nationalite
    }
    );

  factory Etudiant.fromJson(Map<String, dynamic> json) {
    return Etudiant(
      id: json['id'],
      nom: json['nom'],
      prenom: json['prenom'],
      datenaiss: json['datenaiss'],
      lieu: json['lieu'],
      sexe: json['sexe'],
      nationalite: json['nationalite'],
    );
  }
}

  Future<Etudiant> fetchEtudiant() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Etudiant.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed');
  }
}

    
