import 'package:apple_music_clone/models/search_album_result.dart';
import 'package:apple_music_clone/models/search_result.dart';

class SearchResultViewModel {
  SearchResult _searchResult;

  SearchResultViewModel({required SearchResult result})
      : _searchResult = result;

  String get wrapperType {
    return _searchResult.wrapperType;
  }

  String get kind {
    return _searchResult.kind;
  }

  String get artistName {
    return _searchResult.artistName;
  }

  String get trackName {
    return _searchResult.trackName;
  }

  String get previewUrl {
    return _searchResult.previewUrl;
  }

  String get artworkUrl30 {
    return _searchResult.artworkUrl30;
  }

  String get artworkUrl60 {
    return _searchResult.artworkUrl60;
  }

  String get artworkUrl100 {
    return _searchResult.artworkUrl100;
  }
}

class SearchAlbumResultViewModel {
  SearchAlbumResult _searchResult;

  SearchAlbumResultViewModel({required SearchAlbumResult result})
      : _searchResult = result;

  String get wrapperType {
    return _searchResult.wrapperType;
  }

  String get collectionName {
    return _searchResult.collectionName;
  }

  String get artistName {
    return _searchResult.artistName;
  }

  String get artworkUrl60 {
    return _searchResult.artworkUrl60;
  }

  String get artworkUrl100 {
    return _searchResult.artworkUrl100;
  }

  DateTime get year {
    return _searchResult.releaseDate;
  }
}
