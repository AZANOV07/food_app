import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:food_app/model/model.dart';


class FoodService{

  Future<List<Food>> getData(String text) async{
    final response = await http.get(Uri.parse('https://65fbeb4c14650eb2100b0410.mockapi.io/api/$text'));


    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((item) => Food.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }

  Future<void> putData(bool like,String id, ) async {
    final body =
    jsonEncode({"liked":like});
    final response = await http.put(
      Uri.parse(
          'https://65fbeb4c14650eb2100b0410.mockapi.io/api/food/$id'),
      body: body,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {

    } else {
    }
  }
}
