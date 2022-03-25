import 'package:apple_music_clone/models/search_result.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class ApiService {
  var dio = Dio();

  Future<List<SearchResult>> getSearchResult(String phrasedString) async {
    String url =
        'https://itunes.apple.com/search?term=$phrasedString&limit=50&entity=song&attribute=artistTerm';

    final response = await dio.get(url);
    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = jsonDecode(response.data);
      Iterable list = responseData['results'];
      return list.map((result) => SearchResult.fromJson(result)).toList();
    } else {
      throw Exception("Failed to get songs");
    }
  }
}
