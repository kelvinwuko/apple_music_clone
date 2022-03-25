import 'package:apple_music_clone/models/search_result.dart';
import 'package:apple_music_clone/services/api_service.dart';
import 'package:apple_music_clone/viewmodels/search_result_view.dart';
import 'package:flutter/cupertino.dart';

enum LoadingStatus { completed, searching, empty }

class SearchResultListViewModel with ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.empty;
  List<SearchResultViewModel> songs = <SearchResultViewModel>[];

  void getSearchResult(String phrasedString) async {
    List<SearchResult> searchResult =
        await ApiService().getSearchResult(phrasedString);
    loadingStatus = LoadingStatus.searching;
    notifyListeners();
    songs = searchResult
        .map((result) => SearchResultViewModel(result: result))
        .toList();
    if (songs.isEmpty) {
      loadingStatus = LoadingStatus.empty;
    } else {
      loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}
