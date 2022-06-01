class SearchAlbumResult {
  SearchAlbumResult({
    required this.wrapperType,
    required this.artistId,
    required this.artistName,
    required this.collectionName,
    required this.collectionViewUrl,
    required this.artworkUrl100,
    required this.trackCount,
    required this.releaseDate,
  });

  String wrapperType;
  int artistId;
  String artistName;
  String collectionName;
  String collectionViewUrl;
  String artworkUrl100;
  int trackCount;
  DateTime releaseDate;

  factory SearchAlbumResult.fromJson(Map<String, dynamic> json) =>
      SearchAlbumResult(
        wrapperType: json["wrapperType"],
        artistId: json["artistId"],
        artistName: json["artistName"],
        collectionName: json["collectionName"],
        collectionViewUrl: json["collectionViewUrl"],
        artworkUrl100: json["artworkUrl100"],
        trackCount: json["trackCount"],
        releaseDate: DateTime.parse(json["releaseDate"]),
      );
}
