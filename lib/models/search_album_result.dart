class SearchAlbumResult {
  SearchAlbumResult({
    required this.wrapperType,
    required this.collectionType,
    required this.artistId,
    required this.collectionId,
    required this.artistName,
    required this.collectionName,
    required this.collectionCensoredName,
    required this.artistViewUrl,
    required this.collectionViewUrl,
    required this.artworkUrl60,
    required this.artworkUrl100,
    required this.collectionExplicitness,
    required this.trackCount,
    required this.copyright,
    required this.country,
    required this.currency,
    required this.releaseDate,
    required this.primaryGenreName,
  });

  String wrapperType;
  String collectionType;
  int artistId;
  int collectionId;
  String artistName;
  String collectionName;
  String collectionCensoredName;
  String artistViewUrl;
  String collectionViewUrl;
  String artworkUrl60;
  String artworkUrl100;
  String collectionExplicitness;
  int trackCount;
  String copyright;
  String country;
  String currency;
  DateTime releaseDate;
  String primaryGenreName;


  factory SearchAlbumResult.fromJson(Map<String, dynamic> json) => SearchAlbumResult(
        wrapperType: json["wrapperType"],
        collectionType: json["collectionType"],
        artistId: json["artistId"],
        collectionId: json["collectionId"],
        artistName: json["artistName"],
        collectionName: json["collectionName"],
        collectionCensoredName: json["collectionCensoredName"],
        artistViewUrl: json["artistViewUrl"],
        collectionViewUrl: json["collectionViewUrl"],
        artworkUrl60: json["artworkUrl60"],
        artworkUrl100: json["artworkUrl100"],
        collectionExplicitness: json["collectionExplicitness"],
        trackCount: json["trackCount"],
        copyright: json["copyright"],
        country: json["country"],
        currency: json["currency"],
        releaseDate: DateTime.parse(json["releaseDate"]),
        primaryGenreName: json["primaryGenreName"],
      );
}
