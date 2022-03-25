import 'package:apple_music_clone/assets/app_style.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  TextEditingController inputTextController = TextEditingController();

  //mock data
  List<String> functionList = [
    "Playlists",
    "Artists",
    "Albums",
    "Songs",
    "Downloaded"
  ];
  List<String> songNameList = [
    "Together",
    "Highlight",
    "Bracelet",
    "Light Switch",
    "Universe"
  ];

  List<Icon> functionIcon = [
    const Icon(Icons.queue_music),
    const Icon(Icons.keyboard_voice),
    const Icon(Icons.library_books),
    const Icon(Icons.music_note),
    const Icon(Icons.file_download)
  ];

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
                Text("Library", style: titleText),
              ],
            ),
            const SizedBox(height: 10),
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: functionList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    visualDensity: const VisualDensity(vertical: -3),
                    textColor: Colors.white,
                    iconColor: Colors.pink,
                    leading: functionIcon[index],
                    title: Text(functionList[index]),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Text("Recently Added", style: subtitleText),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, i) {
                      return GridTile(
                          footer: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                songNameList[i],
                                style: smallText,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              // Image border
                              child: SizedBox.fromSize(
                                size: const Size.fromRadius(40),
                                child: Image.network(
                                    'https://source.unsplash.com/random?sig=$i',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ));
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
