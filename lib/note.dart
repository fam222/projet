import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

class Note{
    final int id;
    final String note;
    final String matiere;
}

const Note{
    required this.id,
    required this.note,
    required this.matiere,
}

factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      id: json['id'],
      note: json['note'],
      matiere: json['matiere'],
    );
 }

}