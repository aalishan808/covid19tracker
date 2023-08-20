import 'dart:convert';

import 'package:covid19tracker/utilities/app_url.dart';
import 'package:http/http.dart' as http;

import '../model/WorldstateModel.dart';

class StatusServices{
  Future<WorldStatesModel> fetchWorldStatesRecords() async{
final response = await http.get(Uri.parse(AppUrl.worldStateApi));
if(response.statusCode ==200){
  var data = jsonDecode(response.body);
  return WorldStatesModel.fromJson(data);
}else{
throw Exception('Error World States');
}
  }

  Future<List<dynamic>> countriesListApi() async{
    final data;
    final response = await http.get(Uri.parse(AppUrl.countriesList));
    if(response.statusCode ==200){
      data = jsonDecode(response.body);
      return data;
    }else{
      throw Exception('Error World States');
    }

  }

}