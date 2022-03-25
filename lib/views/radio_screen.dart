import 'package:apple_music_clone/assets/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/radio_item.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  _RadioScreenState createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  //mock data
  List<RadioItem> items = [
    const RadioItem(
        urlImage: 'https://source.unsplash.com/random?sig=8',
        title: 'My Happy Ending',
        subtitle: 'Avril Lavigne'),
    const RadioItem(
        urlImage: 'https://source.unsplash.com/random?sig=9',
        title: 'iPad',
        subtitle: 'The Chainsmokers'),
    const RadioItem(
        urlImage: 'https://source.unsplash.com/random?sig=10',
        title: 'Good Life',
        subtitle: 'OneRepublic'),
    const RadioItem(
        urlImage: 'https://source.unsplash.com/random?sig=11',
        title: 'Stay The Night',
        subtitle: 'Zedd'),
    const RadioItem(
        urlImage: 'https://source.unsplash.com/random?sig=12',
        title: 'Off My Face',
        subtitle: 'Justin Bieber'),
    const RadioItem(
        urlImage: 'https://source.unsplash.com/random?sig=13',
        title: 'Clocks',
        subtitle: 'Coldplay'),
  ];

  List<RadioItem> itemsBottom = [
    const RadioItem(
        urlImage: 'https://source.unsplash.com/random?sig=20',
        title: 'Live It Up',
        subtitle: 'YONAS'),
    const RadioItem(
        urlImage: 'https://source.unsplash.com/random?sig=15',
        title: 'Freaks',
        subtitle: 'Jordan Clarke'),
    const RadioItem(
        urlImage: 'https://source.unsplash.com/random?sig=16',
        title: 'The Reaper',
        subtitle: 'Keshi'),
    const RadioItem(
        urlImage: 'https://source.unsplash.com/random?sig=17',
        title: 'Good Day',
        subtitle: 'BTS'),
    const RadioItem(
        urlImage: 'https://source.unsplash.com/random?sig=18',
        title: 'Cheating on You',
        subtitle: 'Charlie Puth'),
    const RadioItem(
        urlImage: 'https://source.unsplash.com/random?sig=19',
        title: 'Lose You Too',
        subtitle: 'SHY Martin'),
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
        padding: const EdgeInsets.only(top: 0, bottom: 0, left: 20, right: 20),
        child: ListView(
          children: [
            Row(
              children: const [
                Text("Radio", style: titleText),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 190,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                separatorBuilder: (context, _) => const SizedBox(width: 15),
                itemBuilder: (context, index) => buildCard(item: items[index]),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                Text("Our Radio Hosts", style: subtitleText),
              ],
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://source.unsplash.com/random?sig=14',
                fit: BoxFit.cover,
                height: 280.0,
                width: 300.0,
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                Text("New Episodes", style: subtitleText),
              ],
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 190,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                separatorBuilder: (context, _) => const SizedBox(width: 15),
                itemBuilder: (context, index) =>
                    buildMutiRowCard(item: itemsBottom[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard({required RadioItem item}) => SizedBox(
        width: 150,
        height: 150,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                  aspectRatio: 4 / 4,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(item.urlImage, fit: BoxFit.cover))),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(item.title, style: smallText, textAlign: TextAlign.left),
              ],
            ),
            Row(
              children: [
                Text(item.subtitle,
                    style: smallText, textAlign: TextAlign.left),
              ],
            ),
          ],
        ),
      );

  Widget buildMutiRowCard({required RadioItem item}) => Card(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 4 / 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(item.urlImage, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 25),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(item.title,
                      style: smallText, textAlign: TextAlign.center),
                  Text(item.subtitle,
                      style: smallText, textAlign: TextAlign.center),
                ],
              ),
              const SizedBox(width: 25),
              const VerticalDivider(
                color: Colors.grey,
              ),
            ],
          ),
        ),
      );
}
