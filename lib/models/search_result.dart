class SearchResult {
  final String wrapperType;
  final String kind;
  final String artistName;
  final String trackName;
  final String previewUrl;
  final String artworkUrl30;
  final String artworkUrl60;
  final String artworkUrl100;

  SearchResult(
      this.wrapperType,
      this.kind,
      this.artistName,
      this.trackName,
      this.previewUrl,
      this.artworkUrl30,
      this.artworkUrl60,
      this.artworkUrl100);

  factory SearchResult.fromJson(Map<String, dynamic> json) {
    return SearchResult(
        json['wrapperType'],
        json['kind'],
        json['artistName'],
        json['trackName'],
        json['previewUrl'],
        json['artworkUrl30'],
        json['artworkUrl60'],
        json['artworkUrl100']);
  }
}
