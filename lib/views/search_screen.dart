import 'package:apple_music_clone/assets/app_style.dart';
import 'package:apple_music_clone/viewmodels/search_result_list_view_model.dart';
import 'package:flutter/material.dart';
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

  @override
  void initState() {
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
            TextField(
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
                  String phrasedString =
                      textController.toString().replaceAll(" ", "+");
                  Provider.of<SearchResultListViewModel>(context, listen: false)
                      .getSearchResult(phrasedString);
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
            const SizedBox(height: 20),
            Expanded(child: _searchResultList()),
          ],
        ),
      ),
    );
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
                        listViewModel.songs[index].kind +
                            " - " +
                            listViewModel.songs[index].artistName,
                        style: smallSubtitleText),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: Image.network(
                          listViewModel.songs[index].artworkUrl100,
                          fit: BoxFit.cover),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right,
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
}
