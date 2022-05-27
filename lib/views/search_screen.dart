import 'package:apple_music_clone/assets/app_style.dart';
import 'package:apple_music_clone/viewmodels/search_result_list_view_model.dart';
import 'package:apple_music_clone/viewmodels/search_result_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:audioplayers/audioplayers.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController inputTextController = TextEditingController();
  AudioPlayer audioPlayer = AudioPlayer();
  String searchType = 'song';
  List<SearchAlbumResultViewModel> bookmarkList = [];

  @override
  void initState() {
    //init search for jack johnson
    inputTextController.text = "jack johnson";
    String phrasedString =
        inputTextController.text.toString().replaceAll(" ", "+");
    Provider.of<SearchResultListViewModel>(context, listen: false)
        .getSearchResult(phrasedString);
    Provider.of<SearchResultListViewModel>(context, listen: false)
        .getSearchAlbumResult(phrasedString);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 0, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: const [
                Text("Search", style: titleText),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: TextField(
                style: const TextStyle(fontSize: 13.0, color: Colors.white),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey.shade900,
                  hintText: 'Artists, Songs, Lyrics and More',
                ),
                controller: inputTextController,
                onSubmitted: (textController) {
                  if (textController.isNotEmpty) {
                    searchType = 'song';
                    String phrasedString =
                        textController.toString().replaceAll(" ", "+");
                    Provider.of<SearchResultListViewModel>(context,
                            listen: false)
                        .getSearchResult(phrasedString);
                    Provider.of<SearchResultListViewModel>(context,
                            listen: false)
                        .getSearchAlbumResult(phrasedString);
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Colors.grey.shade900,
                        title: const Text(
                          'Error',
                          style: TextStyle(color: Colors.red),
                        ),
                        content: const Text(
                          'Input cannot be empty.',
                          style: smallText,
                        ),
                        actions: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true).pop();
                            },
                            child: const Text(
                              'OK',
                              style: smallText,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:
                        (searchType == 'song') ? Colors.pink : Colors.black,
                    onPrimary: Colors.white,
                    shadowColor: Colors.transparent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: const Size(60, 30),
                  ),
                  onPressed: () {
                    setState(() {
                      searchType = 'song';
                    });
                  },
                  child: const Text(
                    'Songs',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:
                        (searchType == 'album') ? Colors.pink : Colors.black,
                    onPrimary: Colors.white,
                    shadowColor: Colors.transparent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: const Size(60, 30),
                  ),
                  onPressed: () {
                    setState(() {
                      searchType = 'album';
                    });
                  },
                  child: const Text(
                    'Albums',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:
                        (searchType == 'bookmark') ? Colors.pink : Colors.black,
                    onPrimary: Colors.white,
                    shadowColor: Colors.transparent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: const Size(60, 30),
                  ),
                  onPressed: () {
                    setState(() {
                      searchType = 'bookmark';
                    });
                  },
                  child: const Text(
                    'Bookmarks',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
            ),
            Expanded(
                child: (searchType == 'song')
                    ? _searchResultList()
                    : (searchType == 'album')
                        ? _searchAlbumResultList()
                        : _bookmarkList()),
          ],
        ),
      ),
    );
  }

  addBookmark(SearchAlbumResultViewModel album) {
    if (!bookmarkList.contains(album)) {
      bookmarkList.add(album);
      const snackBar = SnackBar(
        content: Text('Added to Bookmark'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      const snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: Text('Already in Bookmark'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Widget _searchResultList() {
    var listViewModel = Provider.of<SearchResultListViewModel>(context);
    if (listViewModel.songs.isNotEmpty) {
      return MediaQuery.removePadding(
        removeTop: true,
        removeBottom: true,
        context: context,
        child: ListView.builder(
            itemCount: listViewModel.songs.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    visualDensity:
                        const VisualDensity(horizontal: 0, vertical: -2),
                    title: Text(
                      listViewModel.songs[index].trackName,
                      style: smallText,
                    ),
                    subtitle: Text(
                        "${listViewModel.songs[index].kind} - ${listViewModel.songs[index].artistName}",
                        style: smallSubtitleText),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: Image.network(
                          listViewModel.songs[index].artworkUrl100,
                          fit: BoxFit.cover),
                    ),
                    trailing: const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.grey,
                    ),
                    onTap: () async {
                      await audioPlayer.stop();
                      await audioPlayer.play(
                        listViewModel.songs[index].previewUrl,
                        isLocal: false,
                      );
                    },
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                ],
              );
            }),
      );
    } else {
      return Container();
    }
  }

  Widget _searchAlbumResultList() {
    var listViewModel = Provider.of<SearchResultListViewModel>(context);
    if (listViewModel.albums.isNotEmpty) {
      return MediaQuery.removePadding(
        removeTop: true,
        removeBottom: true,
        context: context,
        child: ListView.builder(
            itemCount: listViewModel.albums.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Slidable(
                    actionPane: const SlidableDrawerActionPane(),
                    secondaryActions: [
                      IconSlideAction(
                        color: Colors.pink,
                        caption: "Bookmark",
                        icon: Icons.bookmark,
                        onTap: () {
                          addBookmark(listViewModel.albums[index]);
                        },
                      )
                    ],
                    child: ListTile(
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -2),
                      title: Text(
                        listViewModel.albums[index].collectionName,
                        style: smallText,
                      ),
                      subtitle: Text(
                          "${listViewModel.albums[index].year.year} - ${listViewModel.albums[index].artistName}",
                          style: smallSubtitleText),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: Image.network(
                            listViewModel.albums[index].artworkUrl100,
                            fit: BoxFit.cover),
                      ),
                      trailing: const Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey,
                      ),
                      onTap: () async {},
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                ],
              );
            }),
      );
    } else {
      return Container();
    }
  }

  Widget _bookmarkList() {
    //var listViewModel = Provider.of<SearchResultListViewModel>(context);
    if (bookmarkList.isNotEmpty) {
      return MediaQuery.removePadding(
        removeTop: true,
        removeBottom: true,
        context: context,
        child: ListView.builder(
            itemCount: bookmarkList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    visualDensity:
                        const VisualDensity(horizontal: 0, vertical: -2),
                    title: Text(
                      bookmarkList[index].collectionName,
                      style: smallText,
                    ),
                    subtitle: Text(
                        "${bookmarkList[index].year.year} - ${bookmarkList[index].artistName}",
                        style: smallSubtitleText),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: Image.network(bookmarkList[index].artworkUrl100,
                          fit: BoxFit.cover),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.grey,
                    ),
                    onTap: () async {},
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                ],
              );
            }),
      );
    } else {
      return Container();
    }
  }
}
