import 'dart:convert';

import 'package:challenge_app/models/giphy_model.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_gif.g.dart';

//this is still incomplete was trying to write a search api call for gif displaying
@riverpod
Future<List<GifElement>> searchGif(
  SearchGifRef ref,
  String searchString,
) async {
  final response =
      await http.get(Uri.https('api.giphy.com', '/v1/gifs/search', {
    'q': searchString,
    'api_key': 'YVtauJ353HVEBrxN8sgKR6bVGJOm0xRr',
    'limit': '25',
    'offset': '0',
    'rating': 'g',
    'lang': 'en',
    'bundle': 'low_bandwidth',
  }));
  // Using dart:convert, we then decode the JSON payload into a Map data structure.
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  List<GifElement> gifList = (jsonDecode(response.body)['data'] as List)
      .map((data) => GifElement.fromJson(data))
      .toList();
  // print("JSON: ${json.entries.toList().toString()}");
  // Finally, we convert the Map into an Activity instance.
  return gifList;
}
