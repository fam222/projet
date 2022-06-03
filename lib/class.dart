import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

class Classe{ 
  final int id;
  final String libelle;
}

const Classe(
   {
    required this.id,
    required this.libelle, 
   }

 factory Classe.fromJson(Map<String, dynamic> json) {
    return Etudiant(
      id: json['id'],
      libelle: json['libelle'],
    );
 }
 }