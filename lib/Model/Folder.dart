
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Folder {

  final int id;
  final String first_name;
  final String last_name;
  final List<DateTime> appointments;

  Folder(this.id, this.first_name, this.last_name, this.appointments);

  factory Folder.fromJson(Map<String, dynamic> json) {
    return Folder(json['id'], json['first_name'], json['last_name'],
      List.from(json['appointments']).map((e) => DateTime.parse(e)).toList(),
    );
  }
}