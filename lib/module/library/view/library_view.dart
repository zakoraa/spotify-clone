import 'package:flutter/material.dart';
import 'package:spotify/module/library/widget/litsTile_library.dart';

import '../../../list/list_playlist.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.70,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF00667B),
                          Color.fromARGB(255, 17, 16, 17),
                        ]),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SizedBox(
                              width: 1.0,
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Center(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Center(
                          child: Text(
                        "Zakora",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: SizedBox(
                          height: 35,
                          width: 120,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            color: const Color(0xFF3E3F3F),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20.0),
                              splashColor: Colors.transparent,
                              onTap: () {},
                              child: const Center(
                                child: Text(
                                  "Edite Profile",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "23",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "PLAYLIST",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "58",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "FOLLOWERS",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "49",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "FOLLOWING",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text(
                          "Playlist",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Column(
                children: List.generate(playlist_copied.length, (index) {
                  return ListTilePlaylist(
                    img: "${playlist_copied[index].img}",
                    title: "${playlist_copied[index].name}",
                    sub: "${playlist_copied[index].likes}",
                  );
                }),
              ),
              const SizedBox(
                height: 70.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//   Widget _content(String img, String title, String sub) {
//     return ListTile(
//       leading: Image.network(img),
//       title: Text(
//         title,
//         style: const TextStyle(
//           color: Colors.white,
//         ),
//       ),
//       subtitle: Text(
//         sub,
//         style: const TextStyle(
//           color: Colors.grey,
//         ),
//       ),
//     );
//   }
// }
