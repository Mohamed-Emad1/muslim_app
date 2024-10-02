import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:muslim_app/Features/doa/data/entities/doa_entity.dart';
import 'package:muslim_app/Features/doa/data/models/doa_model/doa_model.dart';

abstract class LocalRepo {
  Future<List<DoaEntity>> getDoa();
}

class LocalRepoImpl implements LocalRepo {
  @override
  Future<List<DoaEntity>> getDoa() async {
    String jsonString = await rootBundle.loadString('assets/doaa/doa.json');

    // Parse the JSON string
    final jsonResponse = json.decode(jsonString);

    List<DoaModel> doas = [];
    for (var doa in jsonResponse['data']) {
      doas.add(DoaModel.fromJson(doa));
    }

    return doas;
  }
}
