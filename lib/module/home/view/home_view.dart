import 'package:flutter/material.dart';
import 'package:spotify/list/list_singer.dart';
import 'package:spotify/module/home/widget/gridview_playlist.dart';
import 'package:spotify/module/home/widget/spotify_wrapped.dart';
import '../widget/listview_editor.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.39,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color.fromARGB(124, 149, 121, 30),
                    Color.fromARGB(139, 100, 79, 16),
                    Color.fromARGB(145, 64, 49, 9),
                    Color.fromARGB(145, 43, 33, 7),
                    Color.fromARGB(255, 17, 16, 17),
                    Color.fromARGB(255, 17, 16, 17),
                  ])),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Good Afternoon",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.bookmark_outline,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              Icons.settings_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const GridViewPlaylist()
                  ],
                ),
              ),
            ),
            Row(
              children: const [
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Recommended",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const EditorsPicks(),
            //  LVRecentPlayed(),
            const SpotifyWrapped(),
            Row(
              children: const [
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Editor's picks",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            const EditorsPicks(),
            const SizedBox(
              height: 70.0,
            )
          ],
        ),
      )),
    );
  }
}
